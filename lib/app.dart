import 'package:flutter/material.dart';
import 'package:weather_info_app_live_text/weatheInfoList.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherInfo(),
    );
  }
}
