import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:toters/pages/account_page/account_page.dart';
import 'package:toters/pages/orders_page/orders_page.dart';

import '../delegate_page/delegate_page.dart';
import '../home_page/home_page.dart';
import '../serche_page/serche_page.dart';

class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int currentPage = 0;
  final List<Widget> _pages = [
    toters_home(),
    serche(),
    delegate(),
    orders(),
    account(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentPage,
        barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
        arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
        itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
        itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
        circleOutline: 15.0,
        shadowAllowance: 0.0,
        circleSize: 50.0,
        blurShadowRadius: 50.0,
        circleColor: Colors.purple,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}
List<TabData> getTabsData() {
  return [
    TabData(
      icon: Icons.home,
      iconSize: 30,
      title: 'رئيسية',
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.search,
      iconSize: 30,
      title: 'البحث',
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.delivery_dining_outlined,
      iconSize: 30,
      title: 'المندوب',
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.shopping_cart_checkout_rounded,
      iconSize: 30,
      title: 'طلبات',
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.person_outline_rounded,
      iconSize: 30,
      title: 'حساب',
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
  ];
}