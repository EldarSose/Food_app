import 'package:flutter/material.dart';
import 'package:food/screens/profile_page/profile_page.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

// optional, only if using provided badge style
// ignore: unused_import
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:page_transition/page_transition.dart';

import '../cart_page/cart_page.dart';
import '../home_page/home_page.dart';

class NavigationBarPage extends StatefulWidget {
  final int index;
  const NavigationBarPage({required this.index, super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: widget.index, length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      labels: const ["Cart", "Home", "Account"],
      initialSelectedTab: widget.index == 0
          ? "Cart"
          : widget.index == 1
              ? "Home"
              : "Account",
      tabIconColor: Colors.black,
      tabSelectedColor: const Color.fromARGB(255, 254, 205, 10),
      onTabItemSelected: (int value) {
        setState(() {
          _tabController.index = value;
          if (_tabController.index == 0) {
            Navigator.pushReplacement(
              context,
              PageTransition(
                child: const CartPage(),
                type: PageTransitionType.fade,
                duration: const Duration(
                  milliseconds: 00,
                ),
              ),
            );
          } else if (_tabController.index == 1) {
            Navigator.pushReplacement(
              context,
              PageTransition(
                child: const HomePage(),
                type: PageTransitionType.fade,
                duration: const Duration(
                  milliseconds: 300,
                ),
              ),
            );
          } else if (_tabController.index == 2) {
            Navigator.pushReplacement(
              context,
              PageTransition(
                child: const ProfilePage(),
                type: PageTransitionType.fade,
                duration: const Duration(
                  milliseconds: 300,
                ),
              ),
            );
          }
        });
      },
      icons: const [Icons.shopping_basket, Icons.home, Icons.account_box],
      textStyle: const TextStyle(color: Colors.black),
    );
  }
}
