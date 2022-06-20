part of 'pages.dart';

class IlustrationPage extends StatelessWidget {
  const IlustrationPage({Key? key}) : super(key: key);

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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200.h,
                    height: 200.h,
                    margin: EdgeInsets.only(bottom: 15.h),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/history_rent.png'))),
                  ),
                  Text(
                    "Do you need to drive?",
                    style: blackTextStyle.copyWith(
                      fontSize: 20.sp,
                    ),
                  ),
                  Text(
                    "Seems like you have not\nbooked any car rental yet",
                    style: greyTextStyle.copyWith(
                        fontWeight: light, fontSize: 14.sp),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30.h,
                    ),
                    width: 200.h,
                    height: 45.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all(yellowColor),
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.h)))),
                      child: Text('Find Cars',
                          style: blackTextStyle.copyWith(
                              fontSize: 16.sp, fontWeight: medium)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/main');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.w,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
