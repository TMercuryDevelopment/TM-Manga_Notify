import 'package:flutter/material.dart';

import '../../../utils/theme/app_colors.dart';
import '../../schedules_manga/widgets/card_item_widget.dart';
import '../../../widgets/appbar/appbar_widget.dart';
import '../widgets/search_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        body: Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.maxFinite,
          child: buildSearch(),
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

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Pesquisar',
        onChanged: (_) {},
      );
}
