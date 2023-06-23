
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_200lab/src/config/modules/movieDetail/movie_detail_page.dart';
import 'package:flutter_200lab/src/config/modules/selectCinema/select_cinema_page.dart';
import '../../../../styles/themes/app_colors.dart';
import '../../../../styles/themes/app_text_styles.dart';
import '../../movie.dart';
import '../../widgets/star.dart';

class SliderBar extends StatelessWidget {
  const SliderBar({
    Key? key,
    required this.size,
  }): super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items: movies
        .map((e) => Builder(builder:(context){
      return GestureDetector(
        onTap:(){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context)=> const SelectCinemaPage()));

        },
        child: Stack(
          children: [
            Container(
              width: size.width,
              padding: const EdgeInsets.only(left: 12,bottom: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(e.image))),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:  [
                        GradientPalette.black1,
                        GradientPalette.black2
                      ]
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.only(bottom: 8,left: 8),
                    child: Text(
                      e.title,
                      style: TxtStyles.heading2,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8,bottom: 8),
                    child: Row(
                      children: const [
                        StarComponent(),
                        StarComponent(),
                        StarComponent(),
                        StarComponent(),
                        StarComponent(),
                        Text('(5.0)',
                          style: TxtStyles.heading4,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    })).toList(),options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true
    ));
  }
}
