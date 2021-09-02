import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import '../../../../../core/features/search/presentation/search_page.dart';

import '../../../../../core/shared/utils/theme/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: AppColors.primaryColor,
      splash: Image.asset(
        "assets/images/ic_launcher.png",
        width: 300,
        height: 300,
      ),
      nextScreen: SearchPage(),
      // nextScreen: SchedulesMangaPage(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
