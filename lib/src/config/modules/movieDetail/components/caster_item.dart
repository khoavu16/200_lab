import 'package:flutter/material.dart';

import '../../../../styles/themes/app_text_styles.dart';
import '../../movie.dart';


class Casteritem extends StatelessWidget {
  const Casteritem({
    Key? key,
    required this.size,
    required this.cast,
  }) : super(key: key);
  final Size size;
  final Cast cast;

  @override
  Widget build(BuildContext context) {
    ;
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(
            left: 10,bottom: 4),
          child: Container(
            width: size.width/5,
            height: size.height/5,

            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(cast.profileImageUrl))
            ),
          ),
        ),
        SizedBox(
          width: size.width/5,

          child: Text(
            cast.name ,
            style:TxtStyles.heading4Light ,
          ),
        )
      ],
    );
  }
}

