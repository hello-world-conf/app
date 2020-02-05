import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/animations/delayed_animations.dart';
import 'package:helloworld/widgets/alerts.dart';
import 'package:helloworld/utilities/connection.dart';
import 'package:helloworld/views/homepage.dart';
import 'package:animated_background/animated_background.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'models/user.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        primaryColor: Color(0xff232531),
        canvasColor: Color(0xff232531),
        accentColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  User user;
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('assets/icon.png'),
    baseColor: Colors.blue,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.2,
    spawnMinSpeed: 5.0,
    spawnMaxSpeed: 10.0,
    spawnMinRadius: 7.0,
    spawnMaxRadius: 20.0,
    particleCount: 30,
  );


  static const numBehaviours = 6;

  var particlePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.0;




  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Scaffold(
      bottomNavigationBar: DelayedAnimation(
        delay: delayedAmount + 500,
        child: Container(
            height: 60,
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight:  Radius.circular(20.0)),
              color: Color(0xff1f212c),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Copyright © 2016 - 2020 All rights reserved", style: TextStyle(color: Color(0xff307EBC),fontSize: 15),)
              ],
            )
        ),
      ),
          body: AnimatedBackground(
           vsync: this,
            behaviour: _buildBehaviour(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DelayedAnimation(
                    child: Image.asset('assets/icon.png',fit: BoxFit.contain,height: 150,),
                    delay: delayedAmount + 500,
                  ),
                  SizedBox(height: 10,),

                  DelayedAnimation(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Hello", style: TextStyle(color: Colors.white,fontSize: 40)),
                        Text("World", style: TextStyle(color: Color(0xff307EBC),fontSize: 40)),
                      ]
                    ),
                    delay: delayedAmount + 700,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  DelayedAnimation(
                    child: Container(

                      height: 60,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color(0xff1f212c),
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Color(0xff307EBC),
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff307EBC), width: 1.0),
                          ),
                          prefixIcon: Icon(Icons.alternate_email,color: Colors.white70,),
                          hintText: 'e-mail',
                          hintStyle: TextStyle(color: Colors.white70),

                        ),

                      )
                    ),
                    delay: delayedAmount + 800,
                  ),
                  SizedBox(height: 5.0,),
                  DelayedAnimation(
                    child: GestureDetector(
                      onTapDown: _loginDown,
                      onTapUp: _loginUp,
                      child: Transform.scale(
                        scale: _scale,
                        child: _animatedButtonUI("Login"),
                      ),
                    ),
                    delay: delayedAmount + 900,
                  ),
                  SizedBox(height: 2.0,),
                  DelayedAnimation(
                    child: FlatButton(
                      child: Text("Get a ticket" , style: TextStyle(color: Color(0xff307EBC), fontSize: 20),),
                      onPressed: () {},
                    ),
                    delay: delayedAmount + 1000,
                  ),
                  SizedBox(height: 4.0,),
                ],
              ),
            )
          )
      );
  }

  Widget _animatedButtonUI(String title) {
    return Container(
      height: 60,
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xff1f212c),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/login-2.png',fit: BoxFit.contain,height: 25, color: Color(0xff307EBC),),
            SizedBox(width: 5,),
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xff307EBC),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loginDown(TapDownDetails details) async{
    _controller.forward();
    print("Login pressed...");
    bool userHasInternet = await hasInternet();
    if(!userHasInternet) {
      showNoInternetWarning(context);
      _controller.reverse();
      return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(this.user)));
    _controller.reverse();
  }

  void _loginUp(TapUpDetails details) {
    _controller.reverse();
  }

  Behaviour _buildBehaviour() {
    return RandomParticleBehaviour(
      options: particleOptions,
      paint: particlePaint,
    );
  }





}