part of 'widget.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;

  final Function() onPressed;
  final EdgeInsets margin;
  // final bool isValid;
  const CustomButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      required this.onPressed,
      // this.isValid = false,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 50.w,
      child: ElevatedButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(blackColor),
            backgroundColor: MaterialStateProperty.all(yellowColor),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius.w)))),
        child: Text(title,
            style:
                blackTextStyle.copyWith(fontSize: 16.sp, fontWeight: medium)),
        onPressed: onPressed,
      ),
    );
  }
}
