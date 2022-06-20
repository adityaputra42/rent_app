part of 'widget.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> title;
  final Function(int) ontap;

  const CustomTabBar(
      {Key? key,
      required this.selectedIndex,
      required this.title,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.w,
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(
                top: 40.w,
              ),
              height: 1.w,
              color: greyColor),
          Row(
            children: title
                .map((e) => Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: GestureDetector(
                        onTap: () {
                          ontap(title.indexOf(e));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.w, horizontal: 8.w),
                          child: Column(
                            children: [
                              Text(
                                e,
                                style: (title.indexOf(e) == selectedIndex
                                    ? blackTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14.sp)
                                    : greyTextStyle.copyWith(fontSize: 14.sp)),
                              ),
                              title.indexOf(e) == selectedIndex
                                  ? Container(
                                      height: 3.w,
                                      width: 60.w,
                                      margin: EdgeInsets.only(top: 11.w),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3.w),
                                          color: primaryColor),
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
