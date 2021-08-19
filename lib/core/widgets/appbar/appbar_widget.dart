import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({
    Key? key,
    this.body,
  }) : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 125,
            child: Stack(
              children: [
                body!,
              ],
            ),
          ),
        );

  final Widget? body;
}
