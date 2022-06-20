part of 'widget.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;
  const CustomBottomNavbar({Key? key, this.selectedIndex, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.w,
      decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: const [
            BoxShadow(spreadRadius: 3, blurRadius: 5, color: Colors.black12)
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(defaultMargin),
            topRight: Radius.circular(defaultMargin),
          )),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (onTap != null) {
                  onTap!(0);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 22.w,
                      width: 22.w,
                      child: Icon(
                        Icons.home,
                        color: (selectedIndex == 0) ? yellowColor : greyColor,
                        size: 22.w,
                      )),
                  selectedIndex == 0
                      ? Container(
                          margin: EdgeInsets.only(top: 1.h),
                          child: Text(
                            "Home",
                            style: greyTextStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: semiBold,
                                color: yellowColor),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (onTap != null) {
                  onTap!(1);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 22.w,
                      width: 22.w,
                      child: Icon(
                        Icons.car_rental,
                        color: (selectedIndex == 1) ? yellowColor : greyColor,
                        size: 22.w,
                      )),
                  selectedIndex == 1
                      ? Container(
                          margin: EdgeInsets.only(top: 1.h),
                          child: Text(
                            "Rent car",
                            style: greyTextStyle.copyWith(
                              fontSize: 12.sp,
                              fontWeight: semiBold,
                              color: yellowColor,
                            ),
                          ))
                      : const SizedBox()
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (onTap != null) {
                  onTap!(2);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 22.w,
                      width: 22.w,
                      child: Icon(
                        Icons.settings,
                        color: (selectedIndex == 2) ? yellowColor : greyColor,
                        size: 22.w,
                      )),
                  selectedIndex == 2
                      ? Container(
                          margin: EdgeInsets.only(top: 1.h),
                          child: Text(
                            "Setting",
                            style: greyTextStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: semiBold,
                                color: yellowColor),
                          ))
                      : const SizedBox()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
