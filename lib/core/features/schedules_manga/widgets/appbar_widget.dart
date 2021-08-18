import 'package:flutter/material.dart';
import 'schedules_manga_fonts.dart';
import '../../../utils/theme/app_colors.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 110,
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Icon(
                            Icons.calendar_today,
                            size: 32,
                            color: AppColors.auxAlt,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            "Agendados",
                            style: ScheduleFonts.appbarTitle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ));
}
