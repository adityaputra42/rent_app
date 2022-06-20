part of 'pages.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgorund,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin.w),
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20.w, bottom: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Setting',
                  style: blackTextStyle.copyWith(
                      fontSize: 18.sp, fontWeight: medium),
                ),
                Text(
                  "Set your personal account",
                  style: greyTextStyle.copyWith(
                      fontSize: 13.sp, fontWeight: light),
                ),
              ],
            ),
          ),
          Column(children: [
            Container(
              width: 110.w,
              height: 110.w,
              margin: EdgeInsets.only(bottom: 12.w),
              padding: EdgeInsets.all(3.w),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.w, color: yellowColor)),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          (context.read<UserCubit>().state as UserSucces)
                              .user
                              .image),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Text(
              (context.read<UserCubit>().state as UserSucces).user.name,
              style:
                  blackTextStyle.copyWith(fontSize: 18.sp, fontWeight: medium),
            ),
            SizedBox(
              height: 2.w,
            ),
            Text(
              (context.read<UserCubit>().state as UserSucces).user.email,
              style: greyTextStyle.copyWith(fontSize: 13.sp, fontWeight: light),
            ),
            Container(
              width: double.infinity,
              height: 1.w,
              margin: EdgeInsets.only(top: 12.w, bottom: 18.w),
              decoration: BoxDecoration(color: greyColor),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15.w),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 12.w),
                    child: Icon(
                      Icons.person,
                      size: 24.w,
                      color: yellowColor,
                    ),
                  ),
                  Text(
                    'Edit Profile',
                    style: blackTextStyle.copyWith(fontSize: 16.sp),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15.w),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 12.w),
                    child: Icon(
                      Icons.home_rounded,
                      size: 24.w,
                      color: yellowColor,
                    ),
                  ),
                  Text(
                    'My Address',
                    style: blackTextStyle.copyWith(fontSize: 16.sp),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15.w),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 12.w),
                    child: Icon(
                      Icons.thumb_up_off_alt_rounded,
                      size: 24.w,
                      color: yellowColor,
                    ),
                  ),
                  Text(
                    'Rate This App',
                    style: blackTextStyle.copyWith(fontSize: 16.sp),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15.w),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 12.w),
                    child: Icon(
                      Icons.mode_night,
                      size: 24.w,
                      color: yellowColor,
                    ),
                  ),
                  Text(
                    'Night Mode',
                    style: blackTextStyle.copyWith(fontSize: 16.sp),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 85.w),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 12.w),
                    child: Icon(
                      Icons.logout,
                      size: 24.w,
                      color: yellowColor,
                    ),
                  ),
                  Text(
                    'Log Out',
                    style: blackTextStyle.copyWith(fontSize: 16.sp),
                  )
                ],
              ),
            ),
          ])
        ],
      ),
    );
  }
}
