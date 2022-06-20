part of 'pages.dart';

class DetailCar extends StatelessWidget {
  final Car car;
  const DetailCar(this.car, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: primaryColor,
          ),
          SafeArea(
            child: Container(color: whiteBackgorund),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity.w,
                      height: 270.w,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity.w,
                            height: 240.w,
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.9),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black12,
                                ),
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black12,
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(defaultRadius.w),
                                  bottomRight:
                                      Radius.circular(defaultRadius.w)),
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: defaultMargin.w, vertical: 30.w),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(car.picturePath),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                          Container(
                            width: 26.w,
                            height: 26.w,
                            margin: EdgeInsets.only(
                                left: defaultMargin.w, top: 20.w),
                            decoration: BoxDecoration(
                                color: whiteColor.withOpacity(0.25),
                                borderRadius: BorderRadius.circular(8.w)),
                            child: Center(
                                child: Icon(
                              Icons.chevron_left,
                              size: 20.w,
                              color: blackColor,
                            )),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity.w,
                              height: 70.w,
                              padding: EdgeInsets.only(
                                  left: 16.w, top: 8.w, bottom: 8.w),
                              margin: EdgeInsets.symmetric(
                                  horizontal: defaultMargin.w),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(defaultRadius.w),
                                color: whiteColor,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    color: Colors.black12,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        car.name,
                                        style: blackTextStyle.copyWith(
                                            fontSize: 18.sp,
                                            fontWeight: medium),
                                      ),
                                      SizedBox(
                                        height: 5.w,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            (car.type == CarType.mpv)
                                                ? "MPV"
                                                : (car.type == CarType.suv)
                                                    ? "SUV"
                                                    : (car.type ==
                                                            CarType.sedan)
                                                        ? "Sedan"
                                                        : "MiniBus",
                                            style: greyTextStyle.copyWith(
                                                fontSize: 13.sp,
                                                fontWeight: regular),
                                          ),
                                          Text(
                                            ' - ' + car.year,
                                            style: greyTextStyle.copyWith(
                                                fontSize: 13.sp,
                                                fontWeight: regular),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 35.w,
                                    width: 60.w,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    decoration: BoxDecoration(
                                        color: yellowColor.withOpacity(0.3),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8.w),
                                            bottomLeft: Radius.circular(8.w))),
                                    child: RatingStar(
                                      star: 1,
                                      voteAverage: car.rate,
                                      style: blackTextStyle.copyWith(
                                          fontSize: 14.sp, fontWeight: medium),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: defaultMargin.w, top: 20.w, bottom: 10.w),
                      child: Text(
                        'Fitur',
                        style: blackTextStyle.copyWith(
                            fontSize: 16.sp, fontWeight: semiBold),
                      ),
                    ),
                    SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultMargin.w),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FasilitasCard(
                            color: const Color(0xFFF6B750).withOpacity(0.75),
                            icon: Icon(
                              Icons.electric_car,
                              color: primaryColor,
                              size: 24.w,
                            ),
                            title: 'ENGINE\nOUTPUT',
                            style1: blackTextStyle.copyWith(
                                fontSize: 15.sp, color: primaryColor),
                            content: car.power,
                            subcontent: 'hp',
                            style3: greyTextStyle.copyWith(
                                fontSize: 13.sp, fontWeight: regular),
                            style2: primaryTextStyle.copyWith(
                                fontSize: 28.sp,
                                fontWeight: medium,
                                color: primaryColor),
                          ),
                          FasilitasCard(
                              color: const Color(0xffDBE5F1),
                              icon: Icon(
                                Icons.speed,
                                color: primaryColor,
                                size: 24.w,
                              ),
                              style1: blackTextStyle.copyWith(
                                fontSize: 15.sp,
                              ),
                              style3: greyTextStyle.copyWith(
                                  fontSize: 13.sp, fontWeight: regular),
                              style2: primaryTextStyle.copyWith(
                                  fontSize: 28.sp,
                                  fontWeight: medium,
                                  color: primaryColor),
                              title: 'HIGHEST\nSPEED',
                              subcontent: 'km/h',
                              content: car.topspeed),
                          FasilitasCard(
                            color: primaryColor.withOpacity(0.85),
                            icon: Icon(
                              Icons.timer_outlined,
                              color: whiteColor,
                              size: 24.w,
                            ),
                            style1: whiteTextStyle.copyWith(
                                fontSize: 15.sp, fontWeight: medium),
                            style3: greyTextStyle.copyWith(
                                fontSize: 13.sp, fontWeight: regular),
                            style2: whiteTextStyle.copyWith(
                              fontSize: 28.sp,
                              fontWeight: medium,
                            ),
                            title: 'TIME\nTo 100 KM/H',
                            subcontent: "sec",
                            content: car.acceleration,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: defaultMargin.w, top: 16.w, bottom: 5.w),
                      child: Text(
                        'Description',
                        style: blackTextStyle.copyWith(
                            fontSize: 16.sp, fontWeight: semiBold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: defaultMargin.w),
                      child: Text(
                        car.description,
                        style: greyTextStyle.copyWith(
                          fontSize: 14.sp,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          defaultMargin.w, 20.w, defaultMargin.w, 30.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daily',
                                style: greyTextStyle.copyWith(fontSize: 14.sp),
                              ),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                NumberFormat.currency(
                                        locale: 'ID_id',
                                        decimalDigits: 0,
                                        symbol: 'IDR ')
                                    .format(car.price),
                                style: greenTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 16.sp),
                              ),
                            ],
                          ),
                          CustomButton(
                            title: "Book Now",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SetOrderPage(car)));
                            },
                            width: MediaQuery.of(context).size.width / 2 - 32.w,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
