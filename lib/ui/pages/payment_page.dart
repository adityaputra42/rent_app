part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  final Transaction transaction;
  const PaymentPage(
    this.transaction, {
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  double tax() =>
      ((widget.transaction.car.price) * (widget.transaction.day) +
          (widget.transaction.pricePaket)) /
      100;

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgorund,
      body: Stack(
        children: [
          Container(
            color: primaryColor,
          ),
          SafeArea(
              child: Container(
            color: whiteBackgorund,
          )),
          SafeArea(
              child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin.w),
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20.w, bottom: 30.w),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(right: 12.w),
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
                        'Payment',
                        style: blackTextStyle.copyWith(
                            fontSize: 18.sp, fontWeight: semiBold),
                      ),
                      Text(
                        "Let's finish your transaction",
                        style: greyTextStyle.copyWith(
                            fontSize: 13.sp, fontWeight: light),
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.w),
                margin: EdgeInsets.only(bottom: 30.w),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(16.w),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          color: Colors.black12)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.w),
                      child: Text(
                        'Ordered by :',
                        style: blackTextStyle.copyWith(
                            fontSize: 14.sp, fontWeight: medium),
                      ),
                    ),
                    Text(
                      widget.transaction.user!.name,
                      style: blackTextStyle.copyWith(
                          fontSize: 14.sp, color: primaryColor),
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Text(
                      widget.transaction.user!.phoneNumber,
                      style: greyTextStyle.copyWith(fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Text(
                      "${widget.transaction.user!.address}, ${widget.transaction.user!.city}",
                      style: greyTextStyle.copyWith(
                          fontSize: 14.sp, fontWeight: light),
                    ),
                    // Car Card

                    Container(
                      margin: EdgeInsets.only(top: 20.w),
                      width: double.infinity,
                      height: 70.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80.w,
                                height: 70.w,
                                margin: EdgeInsets.only(right: 8.w),
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.w,
                                  horizontal: 5.w,
                                ),
                                decoration: BoxDecoration(
                                  color: primaryColor.withOpacity(0.85),
                                  borderRadius: BorderRadius.circular(8.w),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(widget
                                              .transaction.car.picturePath),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.transaction.car.name,
                                    style: blackTextStyle.copyWith(
                                        fontSize: 16.sp, color: primaryColor),
                                  ),
                                  SizedBox(
                                    height: 6.w,
                                  ),
                                  Text(
                                    NumberFormat.currency(
                                                locale: 'id-ID',
                                                symbol: 'IDR ',
                                                decimalDigits: 0)
                                            .format(
                                                widget.transaction.car.price) +
                                        ' /Day',
                                    style: greenTextStyle.copyWith(
                                        fontSize: 14.sp),
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            widget.transaction.day.toString() + ' . days',
                            style: greyTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.w, bottom: 15.w),
                      child: Text(
                        'Details Transaction',
                        style: blackTextStyle.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
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
                            style: greyTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 -
                              defaultMargin.w -
                              20.w,
                          child: Text(
                            convertDateTime(widget.transaction.startRent!) +
                                " - " +
                                convertDateTime(widget.transaction.finishRent!),
                            style: blackTextStyle.copyWith(fontSize: 14.sp),
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
                            style: greyTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 -
                              defaultMargin.w -
                              20.w,
                          child: Text(
                            widget.transaction.destination!,
                            style: blackTextStyle.copyWith(fontSize: 14.sp),
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
                            'package Rental',
                            style: greyTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 -
                              defaultMargin.w -
                              20.w,
                          child: Text(
                            widget.transaction.paket!,
                            style: blackTextStyle.copyWith(fontSize: 14.sp),
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
                            'Price Package',
                            style: greyTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 -
                              defaultMargin.w -
                              20.w,
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(widget.transaction.pricePaket),
                            style: blackTextStyle.copyWith(fontSize: 14.sp),
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
                            'Tax',
                            style: greyTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 -
                              defaultMargin.w -
                              20.w,
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(tax()),
                            style: blackTextStyle.copyWith(fontSize: 14.sp),
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
                            'Total Price',
                            style: greyTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 -
                              defaultMargin.w -
                              20.w,
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format((widget.transaction.car.price) *
                                        (widget.transaction.day) +
                                    (widget.transaction.pricePaket) +
                                    tax()),
                            style: greenTextStyle.copyWith(fontSize: 14.sp),
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              CustomButton(
                  title: 'Pay Now',
                  margin: EdgeInsets.only(bottom: 30.w),
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });
                    bool result = await context
                        .read<TransactionCubit>()
                        .submitTransaction(widget.transaction.copyWith(
                            dateTime: DateTime.now(),
                            total: ((widget.transaction.car.price) *
                                    (widget.transaction.day) +
                                (widget.transaction.pricePaket) +
                                tax().toInt())));
                    if (result == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentMethod()));
                    } else {
                      setState(() {
                        isLoading == false;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: redColor,
                          content: Text(
                            'Transaction Failed',
                            style: whiteTextStyle.copyWith(fontSize: 14.sp),
                          ),
                        ),
                      );
                    }
                  })
            ],
          )),
        ],
      ),
    );
  }
}
