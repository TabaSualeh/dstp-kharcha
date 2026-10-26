import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: AppColors.blackTxt,
        child: Text(
          "Summary Screen",
          style: TextStyle(color: AppColors.bottomNavBarBg, fontSize: 46),
        ),
      ),
    );
  }
}
