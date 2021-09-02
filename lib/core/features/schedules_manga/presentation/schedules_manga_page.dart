import 'package:flutter/material.dart';
import '../../../shared/utils/theme/app_colors.dart';

import '../../../utils/theme/app_colors.dart';
import '../../../widgets/appbar/appbar_widget.dart';
import '../widgets/card_item_widget.dart';
import '../widgets/schedules_manga_fonts.dart';

class SchedulesMangaPage extends StatefulWidget {
  const SchedulesMangaPage({Key? key}) : super(key: key);

  @override
  _SchedulesMangaPageState createState() => _SchedulesMangaPageState();
}

class _SchedulesMangaPageState extends State<SchedulesMangaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        body: Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.maxFinite,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today,
                size: 32,
                color: AppColors.auxAlt,
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
      ),
      backgroundColor: AppColors.primaryColor,
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
              child: CardItem(),
            ),
          );
        },
      ),
    );
  }
}
