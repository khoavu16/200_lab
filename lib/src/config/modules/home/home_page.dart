import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_200lab/src/config/modules/home/components/header.dart';
import 'package:flutter_200lab/src/config/modules/movie.dart';
import 'package:flutter_200lab/src/styles/themes/app_colors.dart';
import 'package:flutter_200lab/src/styles/themes/app_text_styles.dart';
import 'components/category_bar.dart';
import 'components/comingsoon.dart';
import 'components/promo.dart';
import 'components/search_bar.dart';
import 'components/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(size: size),
            SearchBar(size: size),
            CategoryBar(size: size),
            buildTitle('Now Playing'),
            SliderBar(size: size),
            buildTitle('Coming Soon'),
            const ComingSoon(),
            buildTitle('Promo'),
            Promo(size: size),
            Promo(size: size),
            Promo(size: size),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 24,vertical:24 ),
          child: Text(content,
            style: TxtStyles.heading2,
            ),
          );
  }
}

