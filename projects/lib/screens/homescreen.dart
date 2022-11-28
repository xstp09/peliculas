import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontssize= TextStyle(fontSize: 25);
    int counter = 10;

   return  Scaffold(
     appBar: AppBar(
       title: const Text('RG´S APP'),
       elevation: 0,
     ),
     //backgroundColor: Colors.tealAccent,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             const Text('Clicks', style: fontssize ,),
             Text('$counter',style: fontssize,),
           ],
         ),
     ),
     //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
     floatingActionButton: FloatingActionButton(
       child: const Icon(Icons.add),
       onPressed: () {  },),
     );


  }


}