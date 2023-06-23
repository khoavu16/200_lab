
import 'package:flutter/material.dart';
import '../../../../styles/themes/app_colors.dart';
import '../../../../styles/themes/app_text_styles.dart';
import '../../movie.dart';

class CategoryBar extends StatefulWidget {
  const CategoryBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height/15,
      child: ListView.builder(
          scrollDirection:Axis.horizontal ,
          itemCount:  genres.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap:(){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left:16),
                alignment: Alignment.center,
                width: widget.size.width / 4,
                decoration: selectedIndex == index? BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(colors: [
                      GradientPalette.lightblue1,
                      GradientPalette.lightblue2
                    ])): BoxDecoration(color: Colors.transparent),
                child: Text(
                  genres[index].name,
                  style: TxtStyles.heading3Medium,
                ),
              ),
            );
          }),
    );
  }
}



