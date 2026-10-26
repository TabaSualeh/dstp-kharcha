import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double result = (40000 / 60000) * 100;
    print(result.runtimeType);
    final value = result.toStringAsFixed(0);
    int thisValue = int.parse(value);
    print(thisValue);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Good Morning',
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.greyTxt,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: '\nAyesha',
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.blackTxt,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: AppColors.lightGreen,
                  child: Text("A"),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(color: AppColors.greenBg, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "October Spending",
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.bottomNavBarBg,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Rs 40,000",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 38,
                        color: AppColors.bottomNavBarBg,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 15.5),
                    LinearProgressIndicator(
                      value: 0.43,
                      color: AppColors.bottomNavBarBg,
                      backgroundColor: AppColors.linearBarLight,
                      minHeight: 8,
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Text(
                          "67% of Rs 60,000 budget",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 13,
                            color: AppColors.bottomNavBarBg,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rs 20,000 left",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 13,
                            color: AppColors.bottomNavBarBg,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
