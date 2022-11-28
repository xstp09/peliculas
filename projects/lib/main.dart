import 'package:flutter/material.dart';
import 'package:projects/screens/counter_screen.dart';

void main(){
  runApp( const RGAPP());
}


class RGAPP extends StatelessWidget {

  const RGAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen()

    );
  }



}