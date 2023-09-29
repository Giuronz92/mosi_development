import 'package:app_meteo/model/city_model.dart';
import 'package:flutter/material.dart';
import 'package:app_meteo/component/city_weather.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) => CityWeather(weatherData[index]),
      ),
    );
  }
}
