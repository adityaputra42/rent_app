part of 'pages.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailControler = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteBackgorund,
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(top: 50.h, bottom: 20.h, left: 6.w),
                        height: 70.w,
                        width: 70.w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo.png'),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: Text(
                          'Welcome Back\nExplorer',
                          style: primaryTextStyle.copyWith(
                              color: primaryColor,
                              fontSize: 22.sp,
                              fontWeight: semiBold),
                          // textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 40.h),
                        margin: EdgeInsets.only(top: 30.h, bottom: 40.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.h),
                            color: whiteColor,
                            boxShadow: const [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.black12)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InputText(
                                obscureText: false,
                                title: 'Email address',
                                hintText: 'Your email address',
                                controller: emailControler),
                            InputText(
                                obscureText: true,
                                title: 'Password',
                                hintText: 'Your password',
                                controller: passwordControler),
                            BlocConsumer<UserCubit, UserState>(
                              listener: (context, state) {
                                if (state is UserSucces) {
                                  context.read<CarCubit>().getCars();
                                  context
                                      .read<TransactionCubit>()
                                      .getTransactions();
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/main', (route) => false);
                                } else if (state is UserFailed) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor: redColor,
                                      content: Text(
                                        state.message,
                                        style: whiteTextStyle,
                                      ),
                                    ),
                                  );
                                }
                              },
                              builder: (context, state) {
                                return CustomButton(
                                  onPressed: () {
                                    context.read<UserCubit>().signIn(
                                        emailControler.text,
                                        passwordControler.text);
                                  },
                                  title: 'Sign in',
                                  margin: EdgeInsets.only(top: 10.h),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign-up');
                          },
                          child: Text('Create New Account',
                              style: greyTextStyle.copyWith(fontSize: 16.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
