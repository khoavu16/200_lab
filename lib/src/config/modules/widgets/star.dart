
import 'package:flutter/material.dart';

import '../../../styles/themes/app_colors.dart';

class StarComponent extends StatelessWidget {
  const StarComponent({
    Key? key,
  }): super (key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding:  EdgeInsets.only(right: 4),
      child: Image.asset('images/star.png',
        color: DarkTheme.yellow,
      ),
    );
  }
}
