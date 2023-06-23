
import 'package:flutter/material.dart';
import '../../../../styles/themes/app_colors.dart';
import '../../../../styles/themes/app_text_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.size,
  });

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: SizedBox(
          height: size.height / 15,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    height: size.height / 15,
                    decoration: BoxDecoration(
                        color: DarkTheme.darkBackGround,
                        borderRadius: BorderRadius.circular(22)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 12),
                          child: Icon(
                            Icons.search,
                            color: DarkTheme.darkerBackGround,
                          ),
                        ),
                        Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Search movie',
                                  hintStyle: TxtStyles.heading3Medium,
                                  border: InputBorder.none),
                            )),
                      ],
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(left: 16),
                width: size.height / 15,
                height: size.height / 15,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        GradientPalette.blue1,
                        GradientPalette.blue2,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(14)),
                child: Image.asset('images/control.png'),
              )
            ],
          ),
        ));
  }
}