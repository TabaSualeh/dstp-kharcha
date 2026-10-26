import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kharcha/constant/app_assets.dart';
import 'package:kharcha/constant/app_colors.dart';
import 'package:kharcha/route/dashboard_screen.dart';
import 'package:kharcha/view/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.greenBg,
      body: Stack(
        children: [
          Positioned(
            right: -(0.099 * sw),
            child: Image.asset(
              AppAssets.upperInnerRing,
              width: 0.58 * sw,
            ),
          ),
          Positioned(
            right: -(0.099 * sw),
            child: Image.asset(
              AppAssets.upperRing,
              width: 0.72 * sw,
            ),
          ),
          Positioned(
            top: 0.47 * sh,
            left: -(0.079 * sw),
            child: Image.asset(
              AppAssets.lowerRing,
              height: 0.42 * sh,
              width: 0.56 * sw,
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 30,
                        right: 32,
                        bottom: 32,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.bottomNavBarBg,
                        borderRadius: BorderRadius.circular(
                          26,
                        ),
                      ),
                      child: Image.asset(
                        AppAssets.walletIcon,
                        height: 30,
                        width: 34,
                      ),
                    ),
                    Text(
                      "Kharcha",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 44,
                        color: AppColors.bottomNavBarBg,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Track every rupee and see where your money goes.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 20,
                        color: AppColors.bottomNavBarBg,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.3, vertical: 17.5),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          var route = MaterialPageRoute(builder: (_) => const DashboardScreen());
                          Navigator.pushReplacement(context, route);
                        },
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.plusJakartaSans(color: AppColors.blackTxt, fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "I already have an account",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 15,
                          color: AppColors.bottomNavBarBg,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
