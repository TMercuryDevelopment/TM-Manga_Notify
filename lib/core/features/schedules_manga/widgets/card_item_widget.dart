import 'package:flutter/material.dart';

import 'schedules_manga_fonts.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: Row(
        children: <Widget>[
          Image(
            height: 144,
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzugaNNkIYcVmz_a0oRRa5UecL55LRtwX-zQ&usqp=CAU',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Konosuba",
                        style: ScheduleFonts.title,
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Text(
                    "Konosuba",
                    style: ScheduleFonts.subtitle,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 8),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "1628746",
                        style: ScheduleFonts.popularity,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Text(
                    "Quarta-feira",
                    style: ScheduleFonts.scheduleDay,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
