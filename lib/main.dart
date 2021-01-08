import 'package:flutter/material.dart';
import 'package:hulla/screens/base_screen/base_screen.dart';
import 'package:hulla/screens/login_screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hulla',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      onGenerateRoute: (settings){
        switch(settings.name){

          case '/login' :
            return MaterialPageRoute(
                builder: (_) => LoginScreen());

          case '/':
          default:
            return MaterialPageRoute(
                builder: (_) => BaseScreen(),
                settings: settings);
        }


      },

    );
  }
}
