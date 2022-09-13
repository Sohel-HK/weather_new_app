import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_apps/weather_model.dart';

class WeatherApiClient {
  Future<WeatherModel> getCurrentWeather(String? location) async {
    var endPoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=23.777176&lon=90.399452&appid=968d395c07b6f82d260afa4b75b8f995");

    var response = await http.get(endPoint);
    print(response.statusCode);
    var body = jsonDecode(response.body);
    WeatherModel weather = WeatherModel.fromJson(body);
    return weather;
  }
}