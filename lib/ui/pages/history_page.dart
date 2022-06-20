part of 'pages.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionSucces) {
          if (state.transactions.isEmpty) {
            return const IlustrationPage();
          } else {
            return RefreshIndicator(
              onRefresh: () async {
                await context.read<TransactionCubit>().getTransactions();
              },
              child: Scaffold(
                backgroundColor: whiteBackgorund,
                body: ListView(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin.w),
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20.h, bottom: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History Rent',
                            style: blackTextStyle.copyWith(
                                fontSize: 18.sp, fontWeight: medium),
                          ),
                          Text(
                            "Let's finish your transaction",
                            style: greyTextStyle.copyWith(
                                fontSize: 13.sp, fontWeight: light),
                          ),
                        ],
                      ),
                    ),
                    CustomTabBar(
                        selectedIndex: selectedIndex,
                        title: const ['New Rent', 'Past Rent'],
                        ontap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        }),
                    Builder(builder: (context) {
                      List<Transaction> listTransaction = (selectedIndex == 0)
                          ? state.transactions
                              .where((element) =>
                                  element.status ==
                                      TransactionStatus.onProcces ||
                                  element.status == TransactionStatus.pending)
                              .toList()
                          : state.transactions
                              .where((element) =>
                                  element.status == TransactionStatus.finish ||
                                  element.status == TransactionStatus.cancelled)
                              .toList();
                      return Column(
                        children: listTransaction
                            .map((e) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailRentCar(
                                                transaction: e,
                                              )));
                                },
                                child: RentCard(transaction: e)))
                            .toList(),
                      );
                    }),
                    SizedBox(
                      height: 150.h,
                    )
                  ],
                ),
              ),
            );
          }
        } else {
          return Center(
            child: loadingIndicator,
          );
        }
      },
    );
  }
}
