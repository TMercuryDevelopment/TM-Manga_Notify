import 'package:flutter/material.dart';

import '../app/features/splash/presentation/pages/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MangaNotify',
      home: SplashPage(),
    );
  }
}
