import 'package:flutter/material.dart';

import '../../movie.dart';
import '../movie_detail_page.dart';
import 'caster_item.dart';


class CastBar extends StatelessWidget {
  const CastBar({
    Key? key,
    required this.size,
  }): super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies[0]
            .casters
            .map((e)=>
            Builder(builder: (context){
              return Casteritem(
                size: size,
                cast: e,
              );
            }))
            .toList(),
      ),
    );
  }
}
