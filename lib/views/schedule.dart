import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:helloworld/widgets/verticaltabs.dart';

class Schedule extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/keyboard-arrow-return.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: <Widget>[
            Image.asset('assets/calendar-edit-1.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
            SizedBox(width: 10,),
            Text("Schedule"),
          ],
        ),elevation: 0,),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: AnimationLimiter(
                  child: VerticalTabs(
                    contentScrollAxis: Axis.vertical,
                    selectedTabBackgroundColor: Colors.white.withOpacity(0.1),
                    indicatorColor: Color(0xff307EBC),
                    tabsElevation: 2,
                    tabTextStyle: TextStyle(color: Colors.white),
                    tabBackgroundColor: Color(0xff232531),
                    tabsWidth: 150,
                    tabs: <Tab>[
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 260),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('10:00',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 300),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('10:15',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 340),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('10:45',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 380),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('11:15',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 420),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('12:00',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 460),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('12:30',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 500),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('14:30',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 540),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('15:00',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 580),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('15:40',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 620),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('16:15',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                      Tab(child: AnimationConfiguration.staggeredList(
                          duration: const Duration(milliseconds: 680),
                          position: null,
                          child: ScaleAnimation(
                              scale: 0.5,
                              child: FadeInAnimation(
                                  child: Text('17:00',
                                    style: TextStyle(color: Colors.white, fontSize: 35),))))),
                    ],
                    contents: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Welcome cerimony', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                          Text('Rafael Almeida', style: TextStyle(color: Color(0xff307EBC), fontSize: 15), textAlign: TextAlign.center,),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Harnessing big data to empower guests and hoteliers', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                          Text('Luís Araújo - SENIOR SOFTWARE ENGINEER @ NONIUS', style: TextStyle(color: Color(0xff307EBC), fontSize: 15), textAlign: TextAlign.center,),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Stack & Heap! How do I deal with you?', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                          Text('Tiago Mota Alão - HEAD OF SOFTWARE ENGINEERING @ EGITRON', style: TextStyle(color: Color(0xff307EBC), fontSize: 15), textAlign: TextAlign.center,),
                        ],

                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Coffeebreak', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Inside the world of gambling with JavaScript', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                          Text('Artur Moreira - SENIOR SOFTWARE ENGINEER @ FMQ', style: TextStyle(color: Color(0xff307EBC), fontSize: 15), textAlign: TextAlign.center,),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Lunch break', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Extreme Programming - What others think we do vs. What we really do', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                          Text('Rita Castro - SOFTWARE DEVELOPER @ SDC:LX', style: TextStyle(color: Color(0xff307EBC), fontSize: 15), textAlign: TextAlign.center,),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Jenkins pipelines best practices', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                          Text('Tiago Seabra - VP of engineering @ SWORD Health', style: TextStyle(color: Color(0xff307EBC), fontSize: 15), textAlign: TextAlign.center,),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Coffeebreak', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('How to enhance your Unit Tests with Testing knowledge', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                          Text('Maik Nogens - Quality Envangelist', style: TextStyle(color: Color(0xff307EBC), fontSize: 15), textAlign: TextAlign.center,),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Closing cerimony', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                          Text('Rafael Almeida', style: TextStyle(color: Color(0xff307EBC), fontSize: 15), textAlign: TextAlign.center,),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}