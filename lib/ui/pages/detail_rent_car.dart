part of 'pages.dart';

class DetailRentCar extends StatelessWidget {
  final Transaction transaction;
  const DetailRentCar({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: primaryColor,
        ),
        SafeArea(
            child: Container(
          color: whiteBackgorund,
        )),
        SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20.w, bottom: 30.w),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(right: 16.w),
                    width: 24.w,
                    height: 24.w,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: blackColor,
                      size: 24.w,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Detail Rent Car',
                        style: blackTextStyle.copyWith(
                            fontSize: 18.sp, fontWeight: semiBold),
                      ),
                      Text(
                        'Set your order rent',
                        style: greyTextStyle.copyWith(
                            fontSize: 13.sp, fontWeight: light),
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.w),
                    color: whiteColor,
                    boxShadow: const [
                      BoxShadow(
                          spreadRadius: 2, blurRadius: 2, color: Colors.black12)
                    ]),
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    height: 180.w,
                    margin: EdgeInsets.only(bottom: 20.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.w),
                          topRight: Radius.circular(16.w),
                          bottomLeft: Radius.circular(8.w),
                          bottomRight: Radius.circular(8.w)),
                      color: primaryColor.withOpacity(0.8),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(transaction.car.picturePath),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.only(left: 16.w, right: 16.w, bottom: 30.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction.car.name,
                            style: blackTextStyle.copyWith(
                                fontSize: 18.sp, fontWeight: medium),
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Row(
                            children: [
                              Text(
                                (transaction.car.type == CarType.mpv)
                                    ? "MPV"
                                    : (transaction.car.type == CarType.suv)
                                        ? "SUV"
                                        : (transaction.car.type ==
                                                CarType.sedan)
                                            ? "Sedan"
                                            : "MiniBus",
                                style: greyTextStyle.copyWith(
                                    fontSize: 13.sp, fontWeight: light),
                              ),
                              Text(
                                ' - ' + transaction.car.year,
                                style: greyTextStyle.copyWith(
                                    fontSize: 13.sp, fontWeight: light),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          RatingStar(
                              voteAverage: transaction.car.rate,
                              style: blackTextStyle.copyWith(fontSize: 14.sp)),
                          SizedBox(
                            height: 12.w,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  'Transaction Id',
                                  style:
                                      greyTextStyle.copyWith(fontSize: 14.sp),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  transaction.id.toString(),
                                  style:
                                      blackTextStyle.copyWith(fontSize: 14.sp),
                                  textAlign: TextAlign.right,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.w,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  'Time',
                                  style:
                                      greyTextStyle.copyWith(fontSize: 14.sp),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  convertDateTime(transaction.startRent!) +
                                      " - " +
                                      convertDateTime(transaction.finishRent!),
                                  style:
                                      blackTextStyle.copyWith(fontSize: 14.sp),
                                  textAlign: TextAlign.right,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.w,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  'Package',
                                  style:
                                      greyTextStyle.copyWith(fontSize: 14.sp),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  transaction.paket!,
                                  style:
                                      blackTextStyle.copyWith(fontSize: 14.sp),
                                  textAlign: TextAlign.right,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.w,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  'Destination',
                                  style:
                                      greyTextStyle.copyWith(fontSize: 14.sp),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  transaction.destination!,
                                  style:
                                      blackTextStyle.copyWith(fontSize: 14.sp),
                                  textAlign: TextAlign.right,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  'Payment',
                                  style:
                                      greyTextStyle.copyWith(fontSize: 14.sp),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 -
                                    defaultMargin.w -
                                    20.w,
                                child: Text(
                                  NumberFormat.currency(
                                          symbol: 'IDR ',
                                          decimalDigits: 0,
                                          locale: 'id_ID')
                                      .format(transaction.total),
                                  style:
                                      greenTextStyle.copyWith(fontSize: 14.sp),
                                  textAlign: TextAlign.right,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.w,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      17.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name',
                                        style: greyTextStyle.copyWith(
                                            fontSize: 13.sp),
                                      ),
                                      SizedBox(
                                        height: 2.w,
                                      ),
                                      Text(
                                        transaction.user!.name,
                                        style: blackTextStyle.copyWith(
                                            fontSize: 14.sp,
                                            fontWeight: medium),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 8.w,
                                      ),
                                      Text(
                                        'Status',
                                        style: greyTextStyle.copyWith(
                                            fontSize: 13.sp),
                                      ),
                                      SizedBox(
                                        height: 2.w,
                                      ),
                                      Text(
                                        (transaction.status ==
                                                TransactionStatus.pending)
                                            ? 'Pending'
                                            : (transaction.status ==
                                                    TransactionStatus.onProcces)
                                                ? 'On Proses'
                                                : (transaction.status ==
                                                        TransactionStatus
                                                            .finish)
                                                    ? 'Finish'
                                                    : 'Cancelled',
                                        style: greenTextStyle.copyWith(
                                            fontSize: 14.sp,
                                            color: (transaction.status ==
                                                        TransactionStatus
                                                            .onProcces ||
                                                    transaction.status ==
                                                        TransactionStatus
                                                            .finish)
                                                ? greenColor
                                                : redColor,
                                            fontWeight: medium),
                                      ),
                                    ],
                                  )),
                              Container(
                                width: 100.w,
                                height: 100.w,
                                decoration: BoxDecoration(
                                    color: greyColor.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8.w)),
                                child: QrImage(
                                  version: 3,
                                  foregroundColor: blackColor,
                                  errorCorrectionLevel: QrErrorCorrectLevel.M,
                                  padding: EdgeInsets.all(5.w),
                                  size: 100.w,
                                  data: transaction.id.toString(),
                                ),
                              )
                            ],
                          ),
                        ]),
                  )
                ]),
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        )
      ]),
    );
  }
}
