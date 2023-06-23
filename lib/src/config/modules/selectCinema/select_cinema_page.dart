import 'package:flutter/material.dart';
import 'package:flutter_200lab/src/styles/themes/app_colors.dart';
import 'package:flutter_200lab/src/styles/themes/app_icon.dart';
import 'package:flutter_200lab/src/styles/themes/app_text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: size.height / 10,
                    child:const Center(
                      child: Text(
                      'Ralph breaks the \n Internet',
                      style: TxtStyles.heading2,
                      textAlign: TextAlign.center,
                    ),
                    ),
                  ),
                  Container(
                    padding:const EdgeInsets.only(left: 16,top: 4) ,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: DarkTheme.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
                height: size.height/14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: DarkTheme.white)),
                child: Row(
                  children: const [
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Select Your Country',
                            hintStyle: TxtStyles.heading4,
                            icon: AssetPath.iconLocation,
                          fillColor: DarkTheme.white),
                          ),),
                    // child: AssetPath.iconLocation
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }
}
