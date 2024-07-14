import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherInfoState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherInfoState({required this.weatherModel});
}

class WeatherInvalidState extends WeatherState {
  final String errMessage;

  WeatherInvalidState(this.errMessage);
}
