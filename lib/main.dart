import 'package:flutter/material.dart';
import 'package:flutter_200lab/src/config/modules/home/home_page.dart';
import 'package:flutter_200lab/src/styles/themes/app_colors.dart';
import 'package:flutter_200lab/src/styles/themes/app_text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "montserrat",
        scaffoldBackgroundColor: DarkTheme.darkerBackGround,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: DarkTheme.white,
          displayColor: DarkTheme.white
        ),
        //ScaffoldbackgroundColor: DarkTheme.darkerBackground,
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}



