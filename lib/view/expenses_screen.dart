import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: AppColors.blackTxt,
        child: Text(
          "Expenses SCREEN",
          style: TextStyle(color: AppColors.bottomNavBarBg, fontSize: 46),
        ),
      ),
    );
  }
}
