import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sedjoek_apps/config/size_config.dart';
import 'package:sedjoek_apps/models/dummy/product_model.dart';
import 'package:sedjoek_apps/pages/warehouse/stock/stock_product.dart';
import 'package:sedjoek_apps/theme.dart';

class StockOpname extends StatefulWidget {
  const StockOpname({Key? key}) : super(key: key);

  @override
  State<StockOpname> createState() => _StockOpnameState();
}

class _StockOpnameState extends State<StockOpname> {
  late List<CollapsibleItem> _items;
  late String _headline;
  final AssetImage _avatarImg = const AssetImage('assets/images/photo.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Paket AC 0.5 PK',
        icon: Icons.apps,
        onPressed: () => setState(() => _headline = 'Paket 0.5 PK'),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Paket AC 0.75 PK',
        icon: Icons.apps,
        onPressed: () => setState(() => _headline = 'Paket 0.75 PK'),
      ),
      CollapsibleItem(
        text: 'Paket AC 1 PK',
        icon: Icons.apps,
        onPressed: () => setState(() => _headline = 'Paket 1 PK'),
      ),
      CollapsibleItem(
        text: 'Paket AC 1.5 PK',
        icon: Icons.apps,
        onPressed: () => setState(() => _headline = 'Paket 1.5 PK'),
      ),
      // CollapsibleItem(
      //   text: 'Settings',
      //   icon: Icons.settings,
      //   onPressed: () => setState(() => _headline = 'Settings'),
      // ),
      // CollapsibleItem(
      //   text: 'Home',
      //   icon: Icons.home,
      //   onPressed: () => setState(() => _headline = 'Home'),
      // ),
      // CollapsibleItem(
      //   text: 'Alarm',
      //   icon: Icons.access_alarm,
      //   onPressed: () => setState(() => _headline = 'Alarm'),
      // ),
      // CollapsibleItem(
      //   text: 'Eco',
      //   icon: Icons.eco,
      //   onPressed: () => setState(() => _headline = 'Eco'),
      // ),
      // CollapsibleItem(
      //   text: 'Event',
      //   icon: Icons.event,
      //   onPressed: () => setState(() => _headline = 'Event'),
      // ),
      // CollapsibleItem(
      //   text: 'Email',
      //   icon: Icons.email,
      //   onPressed: () => setState(() => _headline = 'Email'),
      // ),
      // CollapsibleItem(
      //   text: 'Face',
      //   icon: Icons.face,
      //   onPressed: () => setState(() => _headline = 'Face'),
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildCustomNav(),
    );
  }

  Widget buildCustomNav() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        isCollapsed: true,
        items: _items,
        avatarImg: _avatarImg,
        title: 'John Smith',
        iconSize: 30,
        minWidth: 70,
        maxWidth: 200,
        screenPadding: 0,
        backgroundColor: Colors.white,
        selectedIconBox: Color(0xff6A7886),
        borderRadius: 0,
        titleStyle: TextStyle(fontSize: 14, fontWeight: semiBold),
        toggleTitleStyle: TextStyle(fontSize: 14, fontWeight: semiBold),
        textStyle: TextStyle(fontSize: 14, fontWeight: semiBold),
        toggleTitle: 'Pilihan AC',
        onTitleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Collapsible Sidebar',
              ),
            ),
          );
        },
        body: _body(size, context),
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: buildContent(),
    );
  }

  Widget buildContent() {
    final pages = [
      ...List.generate(
        products.length,
        (index) => StockProduct(
          nameProduct: products[index].name,
          description: products[index].description,
          bgColor: products[index].bgColor,
          titleColor: products[index].titleColor,
          imageProduct: products[index].image,
        ),
      ),
    ];
    return LiquidSwipe(
      positionSlideIcon: 0.9,
      slideIconWidget: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      enableSideReveal: true,
      pages: pages,
      enableLoop: true,
      ignoreUserGestureWhileAnimating: true,
      fullTransitionValue: 600,
      waveType: WaveType.liquidReveal,
    );
  }
}
