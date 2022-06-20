part of 'pages.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

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
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 240.w,
                    height: 180.w,
                    margin: EdgeInsets.only(bottom: 20.w, top: 120.w),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/ilustrasi_pay.png',
                            ),
                            fit: BoxFit.contain)),
                  ),
                  Text(
                    'Choose the payment method\nyou want !!',
                    style: greyTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  CustomButton(
                    title: 'Pay Now',
                    onPressed: () {},
                    margin:
                        EdgeInsets.symmetric(horizontal: 48.w, vertical: 20.w),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 48.w, right: 48.w),
                    width: double.infinity,
                    height: 50.w,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(blackColor),
                          backgroundColor: MaterialStateProperty.all(greyColor),
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(defaultRadius.w)))),
                      child: Text("Continue",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16.sp, fontWeight: medium)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SuccesOrderPage()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.w,
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
