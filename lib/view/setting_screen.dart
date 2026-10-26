import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: AppColors.blackTxt,
        child: Text(
          "Settings SCREEN",
          style: TextStyle(color: AppColors.bottomNavBarBg, fontSize: 46),
        ),
      ),
    );
  }
}
