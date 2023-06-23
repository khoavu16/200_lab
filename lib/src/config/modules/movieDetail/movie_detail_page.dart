import 'package:flutter/material.dart';
import 'package:flutter_200lab/src/config/modules/movie.dart';
import 'package:flutter_200lab/src/config/modules/widgets/star.dart';
import 'package:flutter_200lab/src/styles/themes/app_colors.dart';
import 'package:flutter_200lab/src/styles/themes/app_text_styles.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../styles/themes/app_icon.dart';
import '../../../styles/themes/text.dart';
import 'components/arrow_back.dart';
import 'components/background_widget.dart';
import 'components/cast_bar.dart';
import 'components/trailer_bar.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage ({Key? key}) : super(key: key);

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
            children: [
              BackgroundWidget(size: size),
              Container(
                height: size.height/3.5,
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
                    )),
              ),
             const  ArrowBack(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 24, top: size.height/4.5),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width/2.5,
                            child: Image.asset('images/buzz1.jpg',
                            fit: BoxFit.cover),
                          ),
                          Expanded(child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 8,bottom: 8),
                                width: size.width ,
                                child: Text('Ralph Break the Internet',
                                style: TxtStyles.heading3Medium,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8,bottom: 8),
                                child: Row(
                                  children: const [
                                    StarComponent(),
                                    StarComponent(),
                                    StarComponent(),
                                    StarComponent(),
                                    StarComponent(),
                                    Text(
                                      '5.0',
                                      style: TxtStyles.heading4,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left:8,bottom: 8 ),
                                width:  size.width,
                                child:  const Text(
                                  'Action & adventure, Comedy',
                                  style: TxtStyles.heading4Light,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 8,bottom: 8),
                                width: size.width,
                                child: const Text(
                                  '1h41min' ,
                                   style: TxtStyles.heading4Light,
                                ),
                              )
                            ],
                          ))
                        ],
                      ),
                  ),
                  SizedBox(
                    height:size.height-50,
                    child:  Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          alignment: Alignment.center,
                          width: size.width,
                          child: TabBar(
                            tabs: const [
                              Tab(text: 'About Movie'),
                              Tab(text: 'Review'),
                            ],
                            controller:  _tabController,
                            labelStyle: TxtStyles.heading3,
                            unselectedLabelStyle: TxtStyles.heading3,
                            indicatorColor: DarkTheme.white,
                          ),
                        ),
                        Expanded(
                            child: TabBarView(
                              controller: _tabController,
                            children: [
                            Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children:  [
                                    buildTitle('Synopsis'),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 24),
                                       child:  Text(AppConstant.exampleContent,
                                       style: TxtStyles.heading4Light ,),),
                                    buildTitle('Cast & Crew'),
                                    CastBar(size: size),
                                    buildTitle('Trailer and Song'),
                                    Trailerbar()
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('Review Page'),
                                )
                              ],
                            ),
                              Container()
                          ],
                        ))
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return  Padding(
      padding: const EdgeInsets.all(24),
      child:Text (
        content,
        style: TxtStyles.heading2,
      ),
    );
  }
}
