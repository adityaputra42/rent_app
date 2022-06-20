part of 'widget.dart';

class InputText extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const InputText(
      {Key? key,
      required this.obscureText,
      required this.title,
      required this.hintText,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                blackTextStyle.copyWith(fontSize: 15.sp, fontWeight: regular),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            width: double.infinity,
            height: 50.w,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              color: inputTextColor,
              borderRadius: BorderRadius.circular(defaultRadius.w),
            ),
            child: Center(
              child: TextField(
                cursorColor: blackColor,
                controller: controller,
                style: blackTextStyle.copyWith(fontSize: 14.sp),
                obscureText: obscureText,
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: hintText,
                    hintStyle: greyTextStyle.copyWith(fontSize: 14.sp),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
