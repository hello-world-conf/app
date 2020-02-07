import 'dart:convert';
import 'package:helloworld/models/user.dart';
import 'package:http/http.dart' as http;

const url = 'https://www.eventbriteapi.com/v3/events/81588889565/attendees?status=attending';

/*
  This function retrieves all the users registered in the Event with a given page number.
 */
Future<dynamic> _getUsers({int page}) async{
  print("Getting attendees on page $page");
  return  http.get(url + '&page=$page',headers: {'Authorization': 'Bearer GSZFULGYMWVUUB5QO5HM'}).then((http.Response response) {
    final int statusCode = response.statusCode;
    print(statusCode);
    if (statusCode < 200 || statusCode >= 400 || json == null) {
      throw new Exception("Error while fetching data on _getUsers");
    }
    return json.decode(response.body);
  } );
}


/*
  This function returns the user by the correspondent email.
  Increments the page until it throws an Exception.
 */
Future<User> getUserByEmail(String email) async {
  int page = 1;
  while(true){
    try{
      dynamic users = await _getUsers(page: page);
      List listOfAttendees = users['attendees'];
      for(int i = 0; i< listOfAttendees.length; i++){
        if(listOfAttendees[i]['profile']['email'] == email) {
          print('Found user with this email - ${listOfAttendees[i]['profile']['name'].toString()}');
          return new User(listOfAttendees[i]['profile']['name'].toString(),listOfAttendees[i]['profile']['email'].toString());
        }
      }
      page++;
    } on RangeError{
      page++;
      print("Checking page nr $page");
    } on Exception{
      return null;
    }
  }
}