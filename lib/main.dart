import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kharcha/view/home_screen.dart';
import 'package:kharcha/view/splash_screen.dart';

import 'constant/app_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kharcha',
      // theme: ThemeData(colorScheme: .fromSeed(seedColor: AppColors.greenBg)),
      home: SplashScreen(),
    );
  }
}
