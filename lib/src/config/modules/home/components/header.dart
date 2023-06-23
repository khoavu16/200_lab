import 'package:flutter/material.dart';
import 'package:flutter_200lab/src/styles/themes/app_text_styles.dart';

class HomeHeader extends StatelessWidget{
  const HomeHeader({
    Key? key,
    required this.size,
  }):super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
       return Padding(padding: EdgeInsets.only(top: 64,left: 24,right: 24),
           child: SizedBox(
            height:  size.height/10,
            child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Find your Best \nMovie ',style: TxtStyles.headingiSemibold,),
                 CircleAvatar(
                  radius: size.height/24,
                  backgroundImage: AssetImage('images/profile-user.png'),
               ),
             ],
            ),
       ),);

  }
}
