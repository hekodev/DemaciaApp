import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demacia!',
      theme: ThemeData(
        //primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color(0xFF2d3447),
        fontFamily: 'Raleway',
        textTheme: ThemeData.dark().textTheme.copyWith(
              body1: TextStyle(
                color: Colors.white,
              ),
              body2: TextStyle(
                color: Colors.white,
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
      },
    );
  }
}
