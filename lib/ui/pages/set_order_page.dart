part of 'pages.dart';

class SetOrderPage extends StatefulWidget {
  final Car car;

  const SetOrderPage(this.car, {Key? key}) : super(key: key);

  @override
  _SetOrderPageState createState() => _SetOrderPageState();
}

class _SetOrderPageState extends State<SetOrderPage> {
  late List<String> paket;
  String selectedCity = '';
  var selisih = 0;

  DateTime start = DateTime.now().add(const Duration(days: 1));
  DateTime end = DateTime.now().add(const Duration(days: 1));
  TextEditingController destinationController = TextEditingController();

//  Method Selected Date
  Future selectedDate(DateRangePickerSelectionChangedArgs context) async {
    setState(() {
      if (context.value is PickerDateRange) {
        start = context.value.startDate ??
            DateTime.now().add(const Duration(days: 1));
        end = context.value.endDate ??
            DateTime.now().add(const Duration(days: 1));
        selisih = end.difference(start).inDays + 1;
      }
    });
  }

  //
  @override
  void initState() {
    super.initState();

    paket = ['Self Drive', 'With Driver', 'All In', 'All In Plus'];
    selectedCity = paket[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: whiteBackgorund,
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
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.w, bottom: 30.w),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin.w),
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(right: 16.w),
                        width: 24.w,
                        height: 24.w,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: blackColor,
                          size: 24.w,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Set Order',
                            style: blackTextStyle.copyWith(
                                fontSize: 18.sp, fontWeight: semiBold),
                          ),
                          Text(
                            'Set your order rent',
                            style: greyTextStyle.copyWith(
                                fontSize: 13.sp, fontWeight: light),
                          ),
                        ],
                      )
                    ]),
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 290.w,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin.w),
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(12.w),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 3,
                            color: Colors.black12,
                          )
                        ]),
                    //  Date Picker
                    child: SfDateRangePicker(
                      headerHeight: 40.w,
                      viewSpacing: 60.w,
                      selectionRadius: 65.w,
                      view: DateRangePickerView.month,
                      onSelectionChanged: selectedDate,
                      enablePastDates: false,
                      rangeSelectionColor: yellowColor.withOpacity(0.2.w),
                      rangeTextStyle: blackTextStyle.copyWith(
                        fontSize: 14.sp,
                      ),
                      selectionTextStyle: whiteTextStyle.copyWith(
                        fontSize: 14.sp,
                      ),
                      startRangeSelectionColor: yellowColor,
                      endRangeSelectionColor: yellowColor,
                      headerStyle: DateRangePickerHeaderStyle(
                        textAlign: TextAlign.center,
                        textStyle: blackTextStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: semiBold,
                        ),
                      ),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                        weekendTextStyle: blackTextStyle.copyWith(
                          fontSize: 14.sp,
                        ),
                        textStyle: blackTextStyle.copyWith(
                          fontSize: 14.sp,
                        ),
                        todayCellDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: yellowColor, width: 1.w),
                        ),
                        todayTextStyle: blackTextStyle.copyWith(
                          fontSize: 14.sp,
                        ),
                        disabledDatesTextStyle: greyTextStyle.copyWith(
                          fontSize: 14.sp,
                        ),
                      ),
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().add(const Duration(days: 1)),
                          DateTime.now().add(const Duration(days: 2))),
                    ),
                    // Destination
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        defaultMargin.w, 20.w, defaultMargin.w, 0),
                    child: InputText(
                        obscureText: false,
                        title: "Destination",
                        hintText: 'Type your destination',
                        controller: destinationController),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(
                        defaultMargin.w, 0, defaultMargin.w, 6.w),
                    child: Text(
                      'Rental Package',
                      style: blackTextStyle.copyWith(fontSize: 14.sp),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.w,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin.w),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.w),
                      color: inputTextColor,
                    ),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        underline: const SizedBox(),
                        borderRadius: BorderRadius.circular(12.w),
                        dropdownColor: whiteColor,
                        value: selectedCity,
                        items: paket
                            .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e,
                                  style:
                                      blackTextStyle.copyWith(fontSize: 14.sp),
                                )))
                            .toList(),
                        onChanged: (item) {
                          setState(() {
                            selectedCity = item.toString();
                          });
                        },
                      ),
                    ),
                  ),
                  CustomButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentPage(
                            Transaction(
                              id: 121,
                              car: widget.car,
                              startRent: start,
                              finishRent: end,
                              day: selisih,
                              user: (context.read<UserCubit>().state
                                      as UserSucces)
                                  .user,
                              destination: destinationController.text,
                              paket: selectedCity,
                              pricePaket: (selectedCity == paket[0])
                                  ? 50000
                                  : (selectedCity == paket[1])
                                      ? 250000
                                      : (selectedCity == paket[2]
                                          ? 350000
                                          : 500000),
                            ),
                          ),
                        ),
                      );
                    },
                    margin: EdgeInsets.fromLTRB(24.w, 35.w, 24.w, 40.w),
                  )
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
