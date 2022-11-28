

 import 'package:flutter/material.dart';

class AppTheme{

  static  Color primary = Colors.cyan.shade800;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      //color primario
      primaryColor: Colors.cyan,
      //AppBar Theme
      appBarTheme: AppBarTheme(
       color:primary,
       elevation: 5
      ),
      scaffoldBackgroundColor: Colors.black87,

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
      ),

      //FloatingActionButtonTheme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppTheme.primary,
          elevation: 5
      ),

      //ElevatedButtonTheme:
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.cyan,
            shape: StadiumBorder(),
            elevation: 0
        ),
      ),

      //InputDecorationTheme
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),

  )


  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    //color primario
      primaryColor: Colors.amber,
      //AppBar Theme
      appBarTheme: AppBarTheme(
          color:primary,
          elevation: 5
      ),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
      ),

      //FloatingActionButtonTheme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppTheme.primary,
        elevation: 5
      ),

      //ElevatedButtonTheme:
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.cyan,
            shape: StadiumBorder(),
            elevation: 0
        ),
      ),

      //InputDecorationTheme
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),

        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),

        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),

      )

  );



 }
