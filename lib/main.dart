import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actors Profile',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,  // AppBar background color
          foregroundColor: Colors.white,  // AppBar text color
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            color: Colors.teal,   // Color of the headline text (e.g., AppBar title)
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal,  // Button background color
          textTheme: ButtonTextTheme.primary,  // Text color for buttons
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),  // Define route for home page
      },
    );
  }
}
