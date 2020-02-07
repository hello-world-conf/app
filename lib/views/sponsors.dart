import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Sponsors extends StatelessWidget{



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
            Image.asset('assets/bookmarks-document.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
            SizedBox(width: 10,),
            Text("Sponsors"),
          ],
        ),elevation: 0,),
      body: SafeArea(
        child: AnimationLimiter(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20,),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 100),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color(0xff1f212c),
                        ),
                      height: 60,
                        child: Center(
                            child: Text("Gold", textAlign: TextAlign.center, style: TextStyle(color:Color(0xff307EBC) , fontSize: 30),))
                    ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/sword-health.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/egitron.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 100),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color(0xff1f212c),
                        ),
                        height: 60,
                        child: Center(
                            child: Text("Silver", textAlign: TextAlign.center, style: TextStyle(color:Color(0xff307EBC) , fontSize: 30),))
                    ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/ifthenpay.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/new-work.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/jetbrains.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 100),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color(0xff1f212c),
                        ),
                        height: 60,
                        child: Center(
                            child: Text("Bronze", textAlign: TextAlign.center, style: TextStyle(color:Color(0xff307EBC) , fontSize: 30),))
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/bolt.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/github.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/aeufp.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
          AnimationConfiguration.staggeredList(
            duration: const Duration(milliseconds: 375),
            position: null,
            child: ScaleAnimation(
              scale: 0.5,
              child: FadeInAnimation(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Color(0xff1f212c),
                    ),
                    height: 60,
                    child: Center(
                        child: Text("Media Partners", textAlign: TextAlign.center, style: TextStyle(color:Color(0xff307EBC) , fontSize: 30),))
                ),
              ),
            ),
          ),
              SizedBox(height: 30,),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/myufp.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/tecmaia.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 375),
                position: null,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Image.asset('assets/ufp.png',fit: BoxFit.contain,height: 200, ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}