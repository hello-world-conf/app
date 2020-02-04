import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
      home: MyHomePage(title: 'Hello World 2020'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: FlatButton(
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logout-2.png',fit: BoxFit.contain,height: 25, color: Color(0xff307EBC),),
              SizedBox(width: 3,),
              Text("Logout" , style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 20,)
            ],
          ),
        ), onPressed: () {
          //Log out
          print("Logout button pressed ...");
        },
      ),

      appBar: AppBar(
        elevation: 0,
          title: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/icon.png',fit: BoxFit.contain,height: 32,),
              Text("Hello", style: TextStyle(color: Colors.white)),
              SizedBox(width: 2,),
              Text("World", style: TextStyle(color: Color(0xff307EBC))),
              SizedBox(width: 2,),
              Text(" | 2020", style: TextStyle(color: Colors.grey[400]))
        ],
      )),
      body: SafeArea(
        child: AnimationLimiter(
          child: GridView.count(

            children: <Widget>[
              AnimationConfiguration.staggeredGrid(
                duration: const Duration(milliseconds: 375),
                position: null,
                columnCount: 3,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Card(
                      elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      margin: EdgeInsets.all(20.0),
                      color: Color(0xff1f212c),
                      child: FlatButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //Icon(Icons.info_outline,color: Color(0xff307EBC),size: 80,),
                            Image.asset('assets/question-circle.png',fit: BoxFit.contain,height: 80, color: Color(0xff307EBC),),
                            SizedBox(height: 2,),
                            Text("Information", style: TextStyle(color: Colors.white,fontSize: 20),),
                            //SizedBox(height: 2,),
                            //Container(color: Color(0xff448ac2), width: 100,height: 1,margin: EdgeInsets.only(right: 30),)
                          ],
                        ),
                        onPressed: () {
                          // Information page
                          print("Information button pressed...");
                        },
                      )
                    ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredGrid(
                duration: const Duration(milliseconds: 375),
                position: null,
                columnCount: 3,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: EdgeInsets.all(20.0),
                        color: Color(0xff1f212c),
                        child: FlatButton(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              //Icon(Icons.info_outline,color: Color(0xff307EBC),size: 80,),
                              Image.asset('assets/megaphone-1.png',fit: BoxFit.contain,height: 80, color: Color(0xff307EBC),),
                              SizedBox(height: 2,),
                              Text("Speakers", style: TextStyle(color: Colors.white,fontSize: 20),),
                              //SizedBox(height: 2,),
                              //Container(color: Color(0xff448ac2), width: 100,height: 1,margin: EdgeInsets.only(right: 30),)
                            ],
                          ),
                          onPressed: () {
                            // Information page
                            print("Speakers button pressed...");
                          },
                        )
                    ),
                  ),
                ),
              ),AnimationConfiguration.staggeredGrid(
                duration: const Duration(milliseconds: 375),
                position: null,
                columnCount: 3,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: EdgeInsets.all(20.0),
                        color: Color(0xff1f212c),
                        child: FlatButton(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              //Icon(Icons.info_outline,color: Color(0xff307EBC),size: 80,),
                              Image.asset('assets/tags-favorite-star.png',fit: BoxFit.contain,height: 80, color: Color(0xff307EBC),),
                              SizedBox(height: 2,),
                              Text("Draw", style: TextStyle(color: Colors.white,fontSize: 20),),
                              //SizedBox(height: 2,),
                              //Container(color: Color(0xff448ac2), width: 100,height: 1,margin: EdgeInsets.only(right: 30),)
                            ],
                          ),
                          onPressed: () {
                            // Information page
                            print("Draw button pressed...");
                          },
                        )
                    ),
                  ),
                ),
              ),AnimationConfiguration.staggeredGrid(
                duration: const Duration(milliseconds: 375),
                position: null,
                columnCount: 3,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: EdgeInsets.all(20.0),
                        color: Color(0xff1f212c),
                        child: FlatButton(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              //Icon(Icons.info_outline,color: Color(0xff307EBC),size: 80,),
                              Image.asset('assets/calendar-edit-1.png',fit: BoxFit.contain,height: 80, color: Color(0xff307EBC),),
                              SizedBox(height: 2,),
                              Text("Schedule", style: TextStyle(color: Colors.white,fontSize: 20),),
                              //SizedBox(height: 2,),
                              //Container(color: Color(0xff448ac2), width: 100,height: 1,margin: EdgeInsets.only(right: 30),)
                            ],
                          ),
                          onPressed: () {
                            // Information page
                            print("Schedule button pressed...");
                          },
                        )
                    ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredGrid(
                duration: const Duration(milliseconds: 375),
                position: null,
                columnCount: 3,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: EdgeInsets.all(20.0),
                        color: Color(0xff1f212c),
                        child: FlatButton(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              //Icon(Icons.info_outline,color: Color(0xff307EBC),size: 80,),
                              Image.asset('assets/bookmarks-document.png',fit: BoxFit.contain,height: 80, color: Color(0xff307EBC),),
                              SizedBox(height: 2,),
                              Text("Sponsors", style: TextStyle(color: Colors.white,fontSize: 20),),
                              //SizedBox(height: 2,),
                              //Container(color: Color(0xff448ac2), width: 100,height: 1,margin: EdgeInsets.only(right: 30),)
                            ],
                          ),
                          onPressed: () {
                            // Information page
                            print("Sponsers button pressed...");
                          },
                        )
                    ),
                  ),
                ),
              ),
              AnimationConfiguration.staggeredGrid(
                duration: const Duration(milliseconds: 375),
                position: null,
                columnCount: 3,
                child: ScaleAnimation(
                  scale: 0.5,
                  child: FadeInAnimation(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: EdgeInsets.all(20.0),
                        color: Color(0xff1f212c),
                        child: FlatButton(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              //Icon(Icons.info_outline,color: Color(0xff307EBC),size: 80,),
                              Image.asset('assets/binocular.png',fit: BoxFit.contain,height: 80, color: Color(0xff307EBC),),
                              SizedBox(height: 2,),
                              Text("Location", style: TextStyle(color: Colors.white,fontSize: 20),),
                              //SizedBox(height: 2,),
                              //Container(color: Color(0xff448ac2), width: 100,height: 1,margin: EdgeInsets.only(right: 30),)
                            ],
                          ),
                          onPressed: () {
                            // Information page
                            print("Location button pressed...");
                          },
                        )
                    ),
                  ),
                ),
              ),

            ],
            crossAxisCount: 2,
          ),
        ),
      ),
    );
  }
 
}
