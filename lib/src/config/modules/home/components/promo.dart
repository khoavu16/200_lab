
import 'package:flutter/material.dart';

import '../../../../styles/themes/app_colors.dart';
import '../../../../styles/themes/app_text_styles.dart';

class Promo extends StatelessWidget {
  const Promo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24,right: 24,bottom: 12),
      child: Container(
        height: size.height/8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: const LinearGradient(
                colors:[
                  GradientPalette.blue1,
                  GradientPalette.blue2
                ])),
        child: Row(
          children: [
            Expanded(
                flex:2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Student Holiday',
                        style: TxtStyles.heading3,
                      ),
                      Text('Maximal only for two people',style: TxtStyles.heading4,
                      )
                    ],
                  ),
                )),
            Expanded(child: Center(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text: 'OFF',style: TxtStyles.heading3Medium ),
                      TextSpan(text: '50%',style: TxtStyles.heading3)
                    ]
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}