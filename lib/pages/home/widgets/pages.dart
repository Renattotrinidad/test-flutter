import 'package:flutter/material.dart';
import 'package:prueba_ima/pages/calculator/calculator.dart';
import 'package:prueba_ima/pages/dashboard/dashboard.dart';
import 'package:prueba_ima/pages/menu/menu.dart';
import 'package:prueba_ima/pages/profile/profile.dart';

class PagesWidget extends StatelessWidget {
  final PageController controller;
  const PagesWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      allowImplicitScrolling: true,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        // Dashboard
        DashboardPage(),
        //Calculator
        CalculatorPage(),
        // Profile
        ProfilePage(),
        // Menu
        MenuPage(),
      ],
    );
  }
}
