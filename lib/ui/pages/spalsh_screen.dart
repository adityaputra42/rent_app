part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/get-started', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgorund,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              primaryColor.withOpacity(0.85),
              primaryColor.withOpacity(0.95),
              primaryColor.withOpacity(1),
              primaryColor.withOpacity(1),
              primaryColor.withOpacity(1),
              primaryColor.withOpacity(0.95),
              primaryColor.withOpacity(0.85),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20.w, top: 180.w),
                    width: 150.w,
                    height: 150.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logo.png'))),
                  ),
                  Text(
                    'MobApp',
                    style: whiteTextStyle.copyWith(
                        fontSize: 30.sp,
                        fontWeight: semiBold,
                        letterSpacing: 5),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
