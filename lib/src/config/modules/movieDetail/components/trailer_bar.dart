import 'package:flutter/material.dart';

import '../../../../styles/themes/app_colors.dart';
import '../../../../styles/themes/app_icon.dart';
import '../../movie.dart';


class Trailerbar extends StatelessWidget {
  const Trailerbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies[0].trailers.map((e) => Builder(builder: (context){
          return Padding(padding: EdgeInsets.only(left: 24),
            child:Stack(
              children: [
                Container(
                  height: 160,
                  width: 260,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(e.trailers),
                          fit: BoxFit.cover)),
                ),
                Container(
                    height: 160,
                    width: 260,
                    decoration:
                    const BoxDecoration(
                        color: Colors.black12
                    )),
                GestureDetector(
                  onTap:(){
                  },
                  child: SizedBox(
                    height: 160,
                    width: 260,
                    child: Container(
                        margin:
                        EdgeInsets.symmetric(
                            vertical: 56),
                        decoration:
                        const BoxDecoration(
                            shape: BoxShape.circle,
                            color: DarkTheme.buleMain),
                        child: AssetPath.iconPlay
                    ),
                  ),
                ),
              ],
            ),
          );
        })).toList(),
      ),
    );
  }
}
