part of 'shared.dart';

// Color Pallete
Color mainColor = const Color(0xff0D5C46);
Color primaryColor = const Color(0xff1B212D);
Color whiteBackgorund = const Color(0xFFF1F3FF);
Color whiteColor = const Color(0xFFFFFFFF);
Color blackColor = const Color(0xFF020202);
Color greyColor = const Color(0xFF8D92A3);
Color inputTextColor = const Color(0xFFE5E9FF);
Color greenColor = const Color(0xff1DDB30);
Color redColor = const Color(0xffE10B0B);
Color yellowColor = const Color(0xffFB6E1F);

// FontStyle pallete

TextStyle blackTextStyle = GoogleFonts.poppins(color: blackColor);
TextStyle greyTextStyle = GoogleFonts.poppins(color: greyColor);
TextStyle primaryTextStyle = GoogleFonts.poppins(color: mainColor);
TextStyle greenTextStyle = GoogleFonts.poppins(color: greenColor);
TextStyle redTextStyle = GoogleFonts.poppins(color: redColor);
TextStyle whiteTextStyle = GoogleFonts.poppins(color: whiteColor);

//  FontWeight Palllete
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: yellowColor,
);
