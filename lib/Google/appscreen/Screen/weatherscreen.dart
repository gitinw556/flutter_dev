import 'package:flutter/material.dart';
import 'package:flutter_dev/Google/appscreen/Screen/appscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';
import 'dart:async';

class WeatherScreen extends StatefulWidget {
  // const WeatherScreen({ Key? key }) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  var temp;
  var description;
  var currently;
  var humidity;
  var windSpeed;

  Future<WeatherInfo> fetchWeather() async {
    final apiKey = "6e2891d596a99b34e36106ec4cdd7bc9";
    final requestUri =
        "https://api.openweathermap.org/data/2.5/weather?q=Chiang%20Mai&units=imperial&appid=6e2891d596a99b34e36106ec4cdd7bc9";
    final response = await http.get(Uri.parse(requestUri));
    if (response.statusCode == 200) {
      return WeatherInfo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Error loading");
    }
  }

  // Future<Null> getWeather() async {
  //   // Uri uri =
  //   //     "https://api.openweathermap.org/data/2.5/weather?q=Chiang%20Mai&units=imperial&appid=6e2891d596a99b34e36106ec4cdd7bc9"
  //   //         as Uri;
  //   // http.Response response = await http.get(uri);
  //   http.Response response = await http.get("https://api.openweathermap.org/data/2.5/weather?q=Chiang%20Mai&units=impertal&appid=6e2891d596a99b34e36106ec4cdd7bc9", headers: null);
  //   var results = jsonDecode(response.body);
  //   print("jhkhkjhkjh$results");
  //   setState(() {
  //     this.temp = results['main']['temp'];
  //     this.description = results['weather'][0]['description'];
  //     this.currently = results['weather'][0]['main'];
  //     this.humidity = results['main']['humidity'];
  //     this.windSpeed = results['wind']['speed'];
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this.getWeather();
  // }
  Future<WeatherInfo> futureWeather;
  @override
  void initState() {
    super.initState();
    futureWeather = fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.lightBlue[700],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => AppScreen());
              Navigator.push(context, route);
            },
          ),
          title: Text('      Chiang Mai Travel',
              style: TextStyle(
                  fontFamily: 'FredokaOne',
                  fontSize: 25,
                  color: Colors.white))),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue[700],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Currenty in Chiang Mai',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text('30'+'\u00B0',
                  //Text("${temp != null ? temp.toString()+ '\u00B0':"Loading"}",
                  //Text(temp != null ? temp.toString() + '\u00B0' : "Loading",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: 
                  Text('Cloudy',
                    //Text("${currently != null ? currently.toString() :"Loading"}",
                    //Text(currently != null ? currently.toString() : "Loading",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                  title: Text("Temperature"),
                  trailing: 
                  Text('30'+'\u00B0'),
                  //Text("${temp != null ? temp.toString() +'\u00B0' : "Loading"}"),
                    //Text(temp != null ? temp.toString() + '\u00B0' : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.cloud),
                  title: Text("Weather"),
                  trailing: 
                  Text('Mostly cloudy'),
                  //Text("${description != null ? description.toString() :"Loading"}"),
                    //Text(description != null ? description.toString() : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.sun),
                  title: Text("Humidity"),
                  trailing:
                      Text('64'),
                      //Text("${humidity != null ? humidity.toString() :"Loading"}"),
                      //Text(humidity != null ? humidity.toString() : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.wind),
                  title: Text("Wind Speed"),
                  trailing: 
                  Text('2.3'),
                  //Text("${windSpeed != null ? windSpeed.toString() :"Loading"}"),
                    //Text(windSpeed != null ? windSpeed.toString() : "Loading"),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class WeatherInfo {
  final double temp;
  final String description;
  final String currently;
  final int humidity;
  final double windSpeed;

  WeatherInfo({
    this.temp,
    this.description,
    this.currently,
    this.humidity,
    this.windSpeed,
  });
  factory WeatherInfo.fromJson(Map<String, dynamic> json) {
    return WeatherInfo(
        temp: json['main']['temp'],
        description: json['weather'][0]['description'],
        currently: json['weather'][0]['main'],
        humidity: json['main']['humidity'],
        windSpeed: json['wind']['speed']);
  }
}
