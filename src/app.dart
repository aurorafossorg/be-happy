import 'package:flutter/material.dart';

import 'screen/splash.dart';
import 'screen/home.dart';

void main(){
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen()
    }
  ));
}