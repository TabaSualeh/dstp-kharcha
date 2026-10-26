import 'package:flutter/material.dart';
import 'package:kharcha/view/expenses_screen.dart';
import 'package:kharcha/view/home_screen.dart';
import 'package:kharcha/view/setting_screen.dart';
import 'package:kharcha/view/summary_screen.dart';

import '../constant/app_colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _screens = [HomeScreen(), ExpensesScreen(), SummaryScreen(), SettingScreen()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: _screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
        color: AppColors.bottomNavBarBg,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              navbarItem(
                label: 'Home',
                index: 0,
                navBarIcon: Icons.home,
              ),
              navbarItem(
                label: 'Expenses',
                index: 1,

                navBarIcon: Icons.list,
              ),
              Container(
                height: 52,
                width: 52,
                decoration: const BoxDecoration(color: AppColors.greenBg, shape: BoxShape.circle),
                child: const Icon(
                  Icons.add,
                  color: AppColors.bottomNavBarBg,
                ),
              ),
              navbarItem(
                label: 'Summary',
                index: 2,

                navBarIcon: Icons.bar_chart,
              ),
              navbarItem(
                label: 'Settings',
                index: 3,

                navBarIcon: Icons.tune,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navbarItem({
    required String label,
    required int index,
    required IconData navBarIcon,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          currentIndex = index;
          setState(() {});
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              navBarIcon,
              size: 28,
              color: currentIndex == index ? AppColors.greenBg : AppColors.blackTxt,
            ),
            Text(
              label,
              style: TextStyle(
                color: currentIndex == index ? AppColors.greenBg : AppColors.blackTxt,
                fontSize: 17,
                fontWeight: currentIndex == index ? FontWeight.w700 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
