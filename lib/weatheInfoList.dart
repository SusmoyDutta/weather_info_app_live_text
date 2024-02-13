import 'package:flutter/material.dart';
import 'package:weather_info_app_live_text/class_weather_info.dart';


class WeatherInfo extends StatefulWidget {
  const WeatherInfo({super.key});

  @override
  State<WeatherInfo> createState() => _WeatherInfoState();
}
// List<WeatherApp> weatherAppList = [];

class _WeatherInfoState extends State<WeatherInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Weather Info App',style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount:classWeatherApp.length ,
        itemBuilder: (BuildContext context, int index) {
          return  Card(
            child: ListTile(
              title:  Text('City:${classWeatherApp[index]['city']?? 'Unknown'}'),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Temperature: ${classWeatherApp[index]['temperature'] ?? 'Unknown'}°C',style: const TextStyle(color: Colors.grey),),
                  Text('Condition: ${classWeatherApp[index]['condition'] ?? 'Unknown'}',style: const TextStyle(color: Colors.grey),),
                  Text('Humidity: ${classWeatherApp[index]['humidity']  ?? 'Unknown'}%',style: const TextStyle(color: Colors.grey),),
                  Text('WindSpeed: ${classWeatherApp[index]['windSpeed'] ?? 'Unknown'} m/s',style: const TextStyle(color: Colors.grey),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
