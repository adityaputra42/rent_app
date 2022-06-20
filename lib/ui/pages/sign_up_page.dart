part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();

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
          padding: EdgeInsets.symmetric(horizontal: defaultMargin.w),
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: blackColor,
                        size: 24.h,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            style: blackTextStyle.copyWith(
                                fontSize: 18.sp, fontWeight: medium),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'Show your pernsonal',
                            style: greyTextStyle.copyWith(
                                fontWeight: light, fontSize: 14.sp),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              margin: EdgeInsets.only(top: 10.h, bottom: 40.h),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.h),
                  color: whiteColor,
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 2, blurRadius: 2, color: Colors.black12)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12.h),
                      width: 90.w,
                      height: 90.w,
                      child: Stack(
                        children: [
                          Container(
                            width: 90.w,
                            height: 90.w,
                            padding: EdgeInsets.all(5.h),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: mainColor, width: 1.w)),
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/profile_pict.png'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                // getImage();
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  right: 5.w,
                                ),
                                width: 24.w,
                                height: 24.w,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/button_add_photo.png'))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InputText(
                      obscureText: false,
                      title: 'Full Name',
                      hintText: 'Your full name',
                      controller: nameController),
                  InputText(
                      obscureText: false,
                      title: 'Email address',
                      hintText: 'Your email address',
                      controller: emailController),
                  InputText(
                      obscureText: true,
                      title: 'Password',
                      hintText: 'Your password',
                      controller: passwordController),
                  InputText(
                      obscureText: true,
                      title: 'Confirm Password',
                      hintText: 'Confirm your password',
                      controller: retypePasswordController),
                  CustomButton(
                    onPressed: () {
                      // if (!(nameController.text.trim() != "" &&
                      //     emailController.text.trim() != "" &&
                      //     passwordController.text.trim() != "" &&
                      //     retypePasswordController.text.trim() != "")) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       dismissDirection: DismissDirection.up,
                      //       backgroundColor: greenColor,
                      //       content: Text(
                      //         'please fill all the fields',
                      //         style: whiteTextStyle,
                      //       ),
                      //     ),
                      //   );
                      // } else if (passwordController.text !=
                      //     retypePasswordController.text) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       dismissDirection: DismissDirection.up,
                      //       backgroundColor: greenColor,
                      //       content: Text(
                      //         'Mismatch password and confirmed password',
                      //         style: whiteTextStyle,
                      //       ),
                      //     ),
                      //   );
                      // } else if (passwordController.text.length < 6) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       dismissDirection: DismissDirection.up,
                      //       backgroundColor: greenColor,
                      //       content: Text(
                      //         'Password length min 6 characters',
                      //         style: whiteTextStyle,
                      //       ),
                      //     ),
                      //   );
                      // } else if (!EmailValidator.validate(
                      //     emailController.text)) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       dismissDirection: DismissDirection.up,
                      //       backgroundColor: greenColor,
                      //       content: Text(
                      //         'Wrong formatted email address',
                      //         style: whiteTextStyle,
                      //       ),
                      //     ),
                      //   );
                      // } else {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => PreferencePage(
                      //                 registrationData: RegistrationData(
                      //                   name: nameController.text,
                      //                   email: emailController.text,
                      //                   password: passwordController.text,
                      //                 ),
                      //               )));
                      // }
                    },
                    title: 'Continue',
                    margin: EdgeInsets.only(top: 10.h),
                  )
                ],
              ),
            ),
          ],
        )),
      ],
    ));
  }
}
