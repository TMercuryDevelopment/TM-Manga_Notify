import 'package:flutter/material.dart';
import '../../../shared/utils/theme/app_colors.dart';
import 'search_fonts.dart';
import '../../../utils/theme/app_colors.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final style =
        widget.text.isEmpty ? SearchFonts.styleHint : SearchFonts.styleActive;

    return Container(
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.auxAlt,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 32,
            ),
            suffixIcon: widget.text.isNotEmpty
                ? GestureDetector(
                    child: Icon(Icons.close, color: Colors.white),
                    onTap: () {
                      controller.clear();
                      widget.onChanged('');
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                  )
                : null,
            hintText: widget.hintText,
            hintStyle: style,
            border: InputBorder.none,
          ),
          style: style,
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
