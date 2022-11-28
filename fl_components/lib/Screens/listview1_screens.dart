import 'package:flutter/material.dart';
import 'package:fl_components/main.dart';

class ListView1Screen extends StatelessWidget{

  final options = const ['Craig','Rick','Trace','Jhonatan','Ornella','Jeremy'];

  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
        elevation: 5,
      ),
      body: ListView(
        children: [

          ...options.map((names) =>
              ListTile(
                leading: const Icon(Icons.access_time_outlined),
                title: Text(names),
                trailing:const Icon(Icons.arrow_forward_ios_outlined),
          )
          ).toList()
        ],
      )
    );
  }
}
