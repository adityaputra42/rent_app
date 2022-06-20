part of 'pages.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/screen.jpg'), fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              primaryColor.withOpacity(0.3),
              primaryColor.withOpacity(0.3),
              primaryColor.withOpacity(0.3),
              primaryColor.withOpacity(0.3),
              blackColor.withOpacity(0.3),
              blackColor.withOpacity(0.5),
              blackColor.withOpacity(0.7),
              blackColor.withOpacity(0.8)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin.w),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 80.w),
                  Text(
                    'Premium\nCar Rental',
                    style: whiteTextStyle.copyWith(
                        fontSize: 32.sp, fontWeight: medium),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Rent the car of your dreams\nwith home delivery',
                    style: whiteTextStyle.copyWith(
                        fontSize: 18.sp, fontWeight: light),
                  ),
                  CustomButton(
                    title: 'Get Started',
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    margin: EdgeInsets.only(
                        bottom: 30.w, top: 300.w, left: 24.w, right: 24.w),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: greyTextStyle.copyWith(
                            fontWeight: light, fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/sign-in');
                        },
                        child: Text(
                          'Sign In',
                          style: whiteTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.w,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
