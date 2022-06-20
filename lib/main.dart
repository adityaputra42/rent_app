import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rent_app/cubit/cubit.dart';
import 'package:rent_app/shared/shared.dart';
import 'package:rent_app/ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CarCubit(),
            ),
            BlocProvider(
              create: (context) => TransactionCubit(),
            ),
            BlocProvider(
              create: (context) => UserCubit(),
            )
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter_ScreenUtil',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: _themeManager.themeMode,
            routes: {
              '/': (context) => const SplashScreen(),
              '/get-started': (context) => const GetStartedPage(),
              '/sign-up': (context) => SignUpPage(),
              '/sign-in': (context) => SignInPage(),
              '/main': (context) => const MainPage(),
            },
          ),
        );
      },
    );
  }
}
