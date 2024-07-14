import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';
class WeatherService {
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'cecc3aca4f5c41279a0203625240907';
  final Dio dio;
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String location}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$location&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'There Was An Error Try Again Later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('There Was An Error Try Again Later');
    }
  }
}
