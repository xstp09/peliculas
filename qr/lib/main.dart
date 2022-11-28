import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr/pages/pages.dart';
import 'package:qr/providers/scan_list_provider.dart';
import 'package:qr/providers/ui_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider()),
        ChangeNotifierProvider(create: (_) => new ScanListProvider()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR READER',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'mapa': (_) => MapaPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.cyan,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.cyan,
          )
        ),
      ),
    );
  }


}