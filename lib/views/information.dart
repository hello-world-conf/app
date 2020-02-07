import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget{
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
          Image.asset('assets/question-circle.png',fit: BoxFit.contain,height: 30, color: Color(0xff307EBC),),
          SizedBox(width: 10,),
          Text("Information"),
        ],
      ),elevation: 0,),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          Image.asset('assets/logotipo.png',fit: BoxFit.contain,height: 300, ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text("Hello World aims to bring together students"
                  " from all of the IT related areas. We provide you with talks and networking moments, as we believe these"
                  " are extremely important in order to keep with the fastly paced technological "
                  "evolution we live today. We're also aiming to get together IT professionals and the companies they work for so"
                  " you can get in touch with real people and real companies." , style: TextStyle( color: Colors.white, fontSize: 20 ), textAlign: TextAlign.center,)),
        ],
      ),
    );
  }
}