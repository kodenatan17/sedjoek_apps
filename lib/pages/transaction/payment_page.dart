import 'package:flutter/material.dart';
import 'package:sedjoek_apps/widgets/header.dart';

import '../../theme.dart';
import '../../widgets/buttons.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  final List<Item> items = [
    Item(
      header: 'Transfer Rekening BCA',
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icons/ico_bca.png',
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'PT. Alpha Cemerlang Solusindo',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '0280254315',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'copy',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semiBold, color: primaryColor),
                ),
              ],
            )
          ],
        ),
      ),
    ),
    Item(
      header: 'Transfer Rekening BNI',
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icons/ico_bni.png',
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'PT. Alpha Cemerlang Solusindo',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '0280254315',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'copy',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semiBold, color: primaryColor),
                ),
              ],
            )
          ],
        ),
      ),
    ),
    Item(
      header: 'Transfer Rekening BRI',
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icons/ico_bri.png',
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'PT. Alpha Cemerlang Solusindo',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '0280254315',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'copy',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semiBold, color: primaryColor),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  ];

  Widget customList() {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: ((index, isExpanded) {
          setState(() {
            items[index].isExpanded = !isExpanded;
          });
        }),
        children: items
            .map(
              (item) => ExpansionPanel(
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, isExpanded) => ListTile(
                  title: Text(
                    item.header,
                    style: primaryTextStyle.copyWith(fontWeight: semiBold),
                  ),
                ),
                body: item.body,
                isExpanded: item.isExpanded,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget customTabBar() {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: TabBar(
        controller: _tabController,
        // give the indicator a decoration (color and border radius)
        indicator: BoxDecoration(
          color: primaryColor,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        tabs: [
          // first tab [you can add an icon using the icon property]
          Tab(
            text: 'Otomatis',
          ),

          // second tab [you can add an icon using the icon property]
          Tab(
            text: 'Manual Transfer',
          ),
        ],
      ),
    );
  }

  Widget customTabView() {
    return Expanded(
      child: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: _tabController,
        children: [
          // first tab bar view widget
          Container(
            margin: const EdgeInsets.only(
                top: defaultMargin, bottom: defaultMargin),
            padding: const EdgeInsets.all(kDefaultPadding * 2),
            decoration: BoxDecoration(
              color: bgCheckoutCard,
              borderRadius: BorderRadius.circular(kDefaultCircular),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ringkasan Pembayaran',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: kDefaultMargin,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lama Sewa',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Harga Produk',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Ongkos Kirim',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Biaya Midtrans',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '6 Bulan',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Rp. 190.000/bulan',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Free',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Free',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultCircular,
                ),
                Divider(
                  thickness: 1,
                  color: primaryTextColor,
                ),
                SizedBox(
                  height: kDefaultCircular,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Rp. 1.140.000',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // second tab bar view widget
          Container(
            margin: const EdgeInsets.only(
              top: defaultMargin,
            ),
            padding: const EdgeInsets.all(kDefaultPadding * 2),
            decoration: BoxDecoration(
              color: bgCheckoutCard,
              borderRadius: BorderRadius.circular(kDefaultCircular),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ringkasan Pembayaran',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: kDefaultMargin,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lama Sawa',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Harga Produk',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Ongkos Kirim',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Biaya Midtrans',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '6 Bulan',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Rp. 190.000/bulan',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Free',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Free',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultCircular,
                ),
                Divider(
                  thickness: 1,
                  color: primaryTextColor,
                ),
                SizedBox(
                  height: kDefaultCircular,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Rp. 1.140.000',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                customList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customBottomNav() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultMargin,
        vertical: kDefaultPadding,
      ),
      child: CustomFilledButton(
        title: 'Lanjut Pembayaran',
        onPressed: () {},
        radius: kDefaultCircular,
      ),
    );
  }

  Widget content() {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pilih Metode Pembayaran',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          customTabBar(),
          customTabView(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Pembayaran',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
        elevation: 0,
      ),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}

class Item {
  final String header;
  final Widget body;
  bool isExpanded;

  Item({required this.header, required this.body, this.isExpanded = false});
}
