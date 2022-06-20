part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _carouselController = CarouselController();
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<CarCubit>().getCars();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgorund,
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity.w,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin.h),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultMargin),
                      bottomRight: Radius.circular(defaultMargin),
                    )),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello, ' +
                                      (context.read<UserCubit>().state
                                              as UserSucces)
                                          .user
                                          .name,
                                  style: whiteTextStyle.copyWith(
                                      fontSize: 18.sp, fontWeight: medium),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 3.w,
                                ),
                                Text(
                                  "Let's start your vocation with us!",
                                  style: greyTextStyle.copyWith(
                                      fontWeight: light, fontSize: 14.sp),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 55.w,
                            width: 55.w,
                            margin: EdgeInsets.only(left: 12.w),
                            padding: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: whiteColor, width: 1.w)),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage((context
                                            .read<UserCubit>()
                                            .state as UserSucces)
                                        .user
                                        .image),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.w, bottom: 20.w),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 45.w,
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius:
                                    BorderRadius.circular(defaultRadius.w),
                              ),
                              child: Center(
                                child: TextField(
                                  cursorColor: blackColor,
                                  style:
                                      blackTextStyle.copyWith(fontSize: 14.sp),
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.search,
                                        color: greyColor,
                                        size: 20.w,
                                      ),
                                      focusColor: Colors.white,
                                      hintText: 'Search car',
                                      hintStyle: greyTextStyle.copyWith(
                                          fontSize: 14.sp),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 45.w,
                            height: 45.w,
                            margin: EdgeInsets.only(left: 16.w),
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(12.w)),
                            child: Icon(
                              Icons.sync_alt_sharp,
                              size: 24.w,
                              color: mainColor,
                            ),
                          )
                        ]),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 20.w, bottom: 20.w, left: defaultMargin.w),
                child: Text(
                  'Available Cars',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 18.sp),
                ),
              ),
              BlocBuilder<CarCubit, CarState>(
                builder: (context, state) {
                  if (state is CarSucces) {
                    return SizedBox(
                        height: 340.w,
                        width: MediaQuery.of(context).size.width,
                        child: CarouselSlider(
                          items: state.cars
                              .where((element) =>
                                  element.status == StatusCar.available)
                              .map((e) => CarCard(e))
                              .toList(),
                          options: CarouselOptions(
                            height: 360.0.w,
                            viewportFraction: 0.73,
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                          carouselController: _carouselController,
                        ));
                  } else {
                    return Center(
                      child: loadingIndicator,
                    );
                  }
                },
              ),
              SizedBox(
                height: 65.w,
              )
            ],
          ),
        ],
      )),
    );
  }
}
