part of 'widget.dart';

class RentCard extends StatelessWidget {
  final Transaction transaction;
  const RentCard({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.w),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
      width: double.infinity,
      height: 80.w,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16.w),
          boxShadow: const [
            BoxShadow(spreadRadius: 2, blurRadius: 2, color: Colors.black12)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              width: 80.w,
              height: 70.w,
              margin: EdgeInsets.only(right: 8.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.w),
                  color: primaryColor.withOpacity(0.7),
                  image: DecorationImage(
                      image: AssetImage(transaction.car.picturePath))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.car.name,
                  style: blackTextStyle.copyWith(
                      fontSize: 18.sp, fontWeight: medium),
                ),
                SizedBox(
                  height: 2.w,
                ),
                Row(
                  children: [
                    Text(transaction.day.toString() + ' Days . ',
                        style: greyTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: light)),
                    Text(
                        NumberFormat.currency(
                                symbol: 'IDR ',
                                decimalDigits: 0,
                                locale: 'id_ID')
                            .format(transaction.total),
                        style: greyTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: light))
                  ],
                )
              ],
            )
          ]),
          Container(
            margin: EdgeInsets.only(right: 5.w),
            child: (transaction.status == TransactionStatus.cancelled)
                ? Text(
                    "Cancelled",
                    style: redTextStyle.copyWith(
                        fontWeight: medium, fontSize: 13.sp),
                  )
                : (transaction.status == TransactionStatus.pending)
                    ? Text(
                        "Pending",
                        style: redTextStyle.copyWith(
                            fontWeight: medium, fontSize: 13.sp),
                      )
                    : (transaction.status == TransactionStatus.onProcces)
                        ? Text(
                            "On Procces",
                            style: greenTextStyle.copyWith(
                                fontWeight: medium, fontSize: 13.sp),
                          )
                        : Text(
                            'Finish',
                            style: greenTextStyle.copyWith(
                                fontWeight: medium, fontSize: 13.sp),
                          ),
          )
          // Padding(
          //   padding: EdgeInsets.only(right: 5.h),
          //   child: Text(
          //    transaction.status,
          //     style:
          //         greenTextStyle.copyWith(fontWeight: medium, fontSize: 14.sp),
          //   ),
          // )
        ],
      ),
    );
  }
}
