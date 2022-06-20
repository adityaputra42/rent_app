part of 'pages.dart';

class SuccesOrderPage extends StatelessWidget {
  const SuccesOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200.w,
                      height: 200.w,
                      margin: EdgeInsets.only(bottom: 15.w, top: 120.w),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/succes_order.png'))),
                    ),
                    Text(
                      "Yeayyy..",
                      style: blackTextStyle.copyWith(
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text(
                      "your transaction was successful,\nsee your transaction history?",
                      style: greyTextStyle.copyWith(
                          fontWeight: light, fontSize: 14.sp),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 40.w, bottom: 20.w, right: 48.w, left: 48.w),
                      width: double.infinity.w,
                      height: 45.w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            backgroundColor:
                                MaterialStateProperty.all(yellowColor),
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(12.w)))),
                        child: Text('My Rent Car',
                            style: blackTextStyle.copyWith(
                                fontSize: 16.sp, fontWeight: medium)),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage(
                                        initialPage: 1,
                                      )),
                              (route) => false);
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Back to home? ',
                          style: greyTextStyle.copyWith(
                              fontWeight: light, fontSize: 14.sp),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/main', (route) => false);
                          },
                          child: Text(
                            'Continue',
                            style: primaryTextStyle.copyWith(
                                color: yellowColor,
                                fontWeight: medium,
                                fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.w,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
