import 'dart:io';

import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:provider/provider.dart';

class PostHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}


void main() {
  HttpOverrides.global = PostHttpOverrides();
  runApp(AppState());
}

class AppState extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return MultiProvider(
       providers: [
        ChangeNotifierProvider(create:(context) => MoviesProvider(), lazy: false),
       ],
     child: MyApp(),
   );
  }

}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //primer cambio
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) =>HomeScreen(),
        'details': (_) =>DetailsScreen(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.cyan
        )
      ),

    );

  }

}