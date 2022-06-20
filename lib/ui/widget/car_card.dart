part of 'widget.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard(this.car, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailCar(car)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width.w,
        padding: EdgeInsets.symmetric(
          vertical: 30.w,
        ),
        margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.w),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(spreadRadius: 2, blurRadius: 2, color: Colors.black12)
          ],
          gradient: LinearGradient(
            colors: [
              primaryColor.withOpacity(0.9),
              primaryColor.withOpacity(0.9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(18.w),
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  car.name,
                  style: whiteTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 20.sp),
                ),
                Container(
                  height: 165.w,
                  margin: EdgeInsets.only(top: 20.w, left: 12.w, right: 12.w),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(car.picturePath),
                          fit: BoxFit.contain)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: defaultMargin.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daily',
                            style: greyTextStyle.copyWith(
                                fontWeight: medium, fontSize: 16.sp),
                          ),
                          Text(
                            NumberFormat.currency(
                                    locale: 'ID_id',
                                    decimalDigits: 0,
                                    symbol: 'IDR ')
                                .format(car.price),
                            style: greenTextStyle.copyWith(
                                fontWeight: medium, fontSize: 18.sp),
                          )
                        ],
                      ),
                      Container(
                        height: 35.w,
                        width: 56.w,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                            color: yellowColor.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.w),
                                bottomLeft: Radius.circular(8.w))),
                        child: RatingStar(
                          star: 1,
                          voteAverage: car.rate,
                          style: whiteTextStyle.copyWith(
                              fontSize: 14.sp, fontWeight: medium),
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
