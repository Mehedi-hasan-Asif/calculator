import 'package:calculator/home_screen.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(const Calculator());
}
class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen() ,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white

        ),
        inputDecorationTheme : const InputDecorationTheme(
          border:  OutlineInputBorder
            (
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder:
          OutlineInputBorder
            (
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder:  OutlineInputBorder
            (
            borderSide: BorderSide(color: Colors.blue),
          ),
          errorBorder:  OutlineInputBorder
            (
            borderSide: BorderSide(color: Colors.red),
          ),
          contentPadding:   EdgeInsets.all(16)

        ),
      ),
    );
  }
}

