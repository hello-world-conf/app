import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var alertStyle = AlertStyle(
  backgroundColor: Color(0xff232531),
  animationType: AnimationType.fromBottom,
  isCloseButton: false,
  isOverlayTapDismiss: true,
  descStyle: TextStyle(color: Colors.white),
  animationDuration: Duration(milliseconds: 250),
  overlayColor: Color(0xff1f212c).withOpacity(0.9),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  titleStyle: TextStyle(
    color: Color(0xff307EBC),
  ),
);

/*
  This function show popup a widget who shows a no internet warning.
   */
showNoInternetWarning(BuildContext context){
  Alert(
    style: alertStyle,
    context: context,
    image: Image.asset('assets/flash-off.png', scale: 10, color: Color(0xff307EBC),),
    title: "Ups!",
    desc: "Please check your connection and try again.",
    buttons: [
      DialogButton(
        color: Color(0xff1f212c),
        child: Text(
          "Alright",
          style: TextStyle(color: Color(0xff307EBC), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}

/*
  This function show popup a widget who shows an Auth Error.
   */
showAuthError(BuildContext context){
  Alert(
    style: alertStyle,
    context: context,
    image: Image.asset('assets/remove-badge.png', scale: 10, color: Color(0xff307EBC),),
    title: "Wrong e-mail!",
    desc: "Please check your e-mail.",
    buttons: [
      DialogButton(
        color: Color(0xff1f212c),
        child: Text(
          "Alright",
          style: TextStyle(color: Color(0xff307EBC), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}


/*
  This function show popup a custom message
 */
showCustomMessage(BuildContext context, String title, String content){
  Alert(
    style: alertStyle,
    context: context,
    image: Image.asset('assets/cog-search.png', scale: 10, color: Color(0xff307EBC),),
    title: title,
    desc: content,
    buttons: [
      DialogButton(
        color: Color(0xff1f212c),
        child: Text(
          "Alright",
          style: TextStyle(color: Color(0xff307EBC), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}