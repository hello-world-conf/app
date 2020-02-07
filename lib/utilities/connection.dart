import 'dart:io';
/*
  Check if user has internet or not.
 */
Future<bool> hasInternet() async {
  try{
    final result = await InternetAddress.lookup('google.pt');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty){
      return true;
    }
  } on Exception{
    return false;
  }
  return false;
}






