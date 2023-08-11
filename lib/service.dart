
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather1/modals/weathermodals.dart';


 Future<WeatherModal> getweather (String city) async {

  String uri='https://api.weatherapi.com/v1/forecast.json?key=34cba36f53ca49108a0205029230908&q=$city&days=1&aqi=no&alerts=no';
   http.Response response =await http.get(Uri.parse(uri));

   Map<String,dynamic> date=jsonDecode(response.body);

  WeatherModal waethermodal=WeatherModal.fromJson(date);


  return waethermodal;
   
 }

