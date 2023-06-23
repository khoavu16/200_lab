
import 'package:flutter/material.dart';

import '../../../../styles/themes/app_colors.dart';


class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height /3.5,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  image:  AssetImage('images/buzz.jpg')),
              gradient: LinearGradient(
                  colors: [
                    GradientPalette.black1,
                    GradientPalette.black2
                  ],
                  begin:  Alignment.topCenter,
                  end: Alignment.bottomCenter
              )),),
        Container(height: 200,
          decoration:  BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  GradientPalette.black1,
                  GradientPalette.black2
                ],
                begin:  Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),
        ),
      ],
    );
  }
}
