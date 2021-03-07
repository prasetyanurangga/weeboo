import 'package:flutter/material.dart';
import 'package:weeboo/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeeBoo',
      theme: ThemeData(
        backgroundColor: Color(0xFF1D212B),
        primaryColorDark: Color(0xFF444850),
        primaryColorLight: Color(0xFF696C72),
        primaryColor: Color(0xFF292D36),
        accentColor: Color(0xFFFFFFFF),
        textTheme: TextTheme(
          headline1: TextStyle(fontFamily: "Poppins",fontSize: 64.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark),
          headline2: TextStyle(fontFamily: "Poppins",fontSize: 56.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark),
          headline3: TextStyle(fontFamily: "Poppins",fontSize: 48.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark),
          headline4: TextStyle(fontFamily: "Poppins",fontSize: 40.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark),
          headline5: TextStyle(fontFamily: "Poppins",fontSize: 32.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark),
          headline6: TextStyle(fontFamily: "Poppins",fontSize: 24.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark),
          bodyText1: TextStyle(fontFamily: "Poppins",fontSize: 16.0, fontWeight: FontWeight.normal, color: Theme.of(context).primaryColorDark),
          bodyText2: TextStyle(fontFamily: "Poppins",fontSize: 12.0, fontWeight: FontWeight.normal, color: Theme.of(context).primaryColorDark),
        )
      ),
      home: MainPage(),
    );
  }
}
