import 'package:flutter/material.dart';
import 'package:app_meteo/model/city_model.dart';

class CityWeather extends StatelessWidget {
  final CityModel cityModel;
  const CityWeather(this.cityModel);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(),
        body(),
      ],
    );
  }

  Widget backgroundImage() => Positioned(
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        child: Image.network(
          cityModel.backgroundImageUrl,
          fit: BoxFit.cover,
          color: Colors.black12,
          colorBlendMode: BlendMode.darken,
        ),
      );

  Widget body() => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cityModel.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${cityModel.temperature}°",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.sunny,
                      color: Colors.white,
                    ),
                    hintText: "Ricerca Città",
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: CityWeatherForecastList(cityModel.sevenDaysForecast),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text("Accetta i Termini e condizioni d'uso"),
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (currentlyChecked) => print(currentlyChecked),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

class CityWeatherForecastList extends StatelessWidget {
  final List<DayForecastModel> sevenDaysForecastModel;
  const CityWeatherForecastList(this.sevenDaysForecastModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "7-Day Forecast",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.white12,
            ),
            Expanded(
                child: ListView.separated(
              itemCount: sevenDaysForecastModel.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  sevenDaysForecastModel[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "${sevenDaysForecastModel[index].temperature} °",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 1,
                color: Colors.white12,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
