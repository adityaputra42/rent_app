part of 'widget.dart';

class FasilitasCard extends StatelessWidget {
  final Icon icon;
  final Color color;
  final String content;
  final String subcontent;
  final String title;
  final TextStyle? style1;
  final TextStyle? style2;
  final TextStyle? style3;
  const FasilitasCard({
    Key? key,
    required this.color,
    required this.icon,
    this.style1,
    this.style2,
    this.style3,
    this.content = '',
    this.subcontent = '',
    this.title = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 165.w,
      margin: EdgeInsets.only(right: 16.w, top: 5.w, bottom: 5.w),
      padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 12.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.w),
          color: color,
          boxShadow: const [
            BoxShadow(blurRadius: 1, spreadRadius: 1, color: Colors.black12),
            BoxShadow(blurRadius: 1, spreadRadius: 1, color: Colors.black12)
          ]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 35.w,
                    height: 35.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.w),
                        color: whiteColor.withOpacity(0.6)),
                    child: icon),
                SizedBox(
                  height: 8.w,
                ),
                Text(
                  title,
                  style: style1,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(content, style: style2),
                SizedBox(
                  width: 5.w,
                ),
                Text(subcontent, style: style3),
              ],
            )
          ]),
    );
  }
}
