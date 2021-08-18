import 'package:flutter/material.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/card_item_widget.dart';

import '../../../utils/theme/app_colors.dart';
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
      appBar: AppBarWidget(),
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
