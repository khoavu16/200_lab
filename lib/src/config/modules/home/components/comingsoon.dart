
import 'package:flutter/material.dart';
import '../../movie.dart';
import '../../movieDetail/movie_detail_page.dart';


class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String>imagecomingsoon= [
      'images/bikipluyenrong.jpg',
      'images/khachsanhuyenbi.jpg',
      'images/up.jpg'

    ];
    return Padding(padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: imagecomingsoon.map((e) => Builder(builder: (context){
          return Expanded(child: GestureDetector(
            onTap:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=> const MovieDetailPage()));

            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal:4),
              child: Image.asset(e),
            ),
          ));
        })).toList(),
      ),);
  }
}

