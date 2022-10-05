import 'package:flutter/material.dart';
import 'package:lab10/pages/choose_location.dart';
import 'package:lab10/pages/loading.dart';
import 'pages/home.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/home',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/location': (context) => ChooseLocation(),
        },
      ),
    );
