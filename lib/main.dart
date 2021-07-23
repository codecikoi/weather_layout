import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          shadowColor: Color.fromRGBO(0, 0, 0, 0),
          title: Text('Weather Forecast'),
          centerTitle: true,
          backgroundColor: Colors.indigo[300],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              _mainBody(),
              _viewMy(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _mainBody() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Icon(
              Icons.search,
              size: 28,
              color: Colors.white70,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Enter city name',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
      SafeArea(
        child: Column(
          children: <Widget>[
            _textT(),
            SizedBox(
              height: 30.0,
            ),
            _iconI(),
            SizedBox(
              height: 30.0,
            ),
            _miniIcons(),
            SizedBox(
              height: 60.0,
            ),
            _textMini(),
            Divider(),
          ],
        ),
      ),
    ],
  );
}

Column _textT() {
  return Column(
    children: <Widget>[
      Text(
        'Sankt-Petersburg, RU',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 2,
          color: Colors.white70,
        ),
      ),
      SizedBox(
        height: 4.0,
      ),
      Text(
        'Monday, July 19, 2021',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
          color: Colors.white70,
        ),
      ),
    ],
  );
}

Row _iconI() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.wb_sunny,
        size: 60.0,
        color: Colors.white70,
      ),
      SizedBox(width: 15.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '22° C',
                style: TextStyle(fontSize: 45.0, color: Colors.white70),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'LIGHT SNOW',
                style: TextStyle(fontSize: 18.0, color: Colors.white70),
              ),
            ],
          )
        ],
      )
    ],
  );
}

Row _miniIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white70,
            size: 40.0,
          ),
          Divider(
            height: 8,
          ),
          Text(
            '5',
            style: TextStyle(fontSize: 25.0, color: Colors.white70),
          ),
          Text(
            'km/hr',
            style: TextStyle(fontSize: 15.0, color: Colors.white70),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white70,
            size: 40.0,
          ),
          Divider(
            height: 8,
          ),
          Text(
            '3',
            style: TextStyle(fontSize: 25.0, color: Colors.white70),
          ),
          Text(
            '%',
            style: TextStyle(fontSize: 15.0, color: Colors.white70),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white70,
            size: 40.0,
          ),
          Divider(
            height: 8,
          ),
          Text(
            '20',
            style: TextStyle(fontSize: 25.0, color: Colors.white70),
          ),
          Text(
            '%',
            style: TextStyle(fontSize: 15.0, color: Colors.white70),
          ),
        ],
      ),
    ],
  );
}

Row _textMini() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '7-DAY WEATHER FORECAST',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white70,
          letterSpacing: 1,
        ),
      ),
    ],
  );
}

class _viewMy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        margin: EdgeInsets.only(left: 10),
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                width: 160,
                child: Column(children: [
                  Divider(),
                  Text(
                    'Friday',
                    style: TextStyle(fontSize: 25.0, color: Colors.white70),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '26 °C',
                        style: TextStyle(fontSize: 20.0, color: Colors.white70),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.wb_sunny,
                        size: 25,
                        color: Colors.white70,
                      )
                    ],
                  ),
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                width: 160,
                child: Column(children: [
                  Divider(),
                  Text(
                    'Saturday',
                    style: TextStyle(fontSize: 25.0, color: Colors.white70),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '25 °C',
                        style: TextStyle(fontSize: 20.0, color: Colors.white70),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.wb_sunny,
                        size: 25,
                        color: Colors.white70,
                      )
                    ],
                  ),
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                width: 160,
                child: Column(children: [
                  Divider(),
                  Text(
                    'Sunday',
                    style: TextStyle(fontSize: 25.0, color: Colors.white70),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '28 °C',
                        style: TextStyle(fontSize: 20.0, color: Colors.white70),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.wb_sunny,
                        size: 25,
                        color: Colors.white70,
                      )
                    ],
                  ),
                ]),
              ),
            ),

          ],
        ));
  }
}
