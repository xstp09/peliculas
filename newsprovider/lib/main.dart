import 'package:flutter/material.dart';
import 'package:newsprovider/SRC/pages/tabs_page.dart';
import 'package:newsprovider/SRC/services/news_service.dart';
import 'package:newsprovider/SRC/theme/tema.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(_) => NewsService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: miTema,
        initialRoute: 'tabspage',
        routes: {
          'tabspage': (_) => TabsPage(),
        },
      ),
    );
  }
}
