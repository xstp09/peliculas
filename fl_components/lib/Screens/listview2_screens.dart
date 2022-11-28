import 'package:flutter/material.dart';
import 'package:fl_components/main.dart';

class ListView2Screen extends StatelessWidget{

  final options = const ['Craig','Rick','Trace','Jhonatan','Ornella','Jeremy'];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        elevation: 5,
        backgroundColor: Colors.cyan,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) =>
            ListTile(
              leading: const Icon(Icons.access_time_outlined, color: Colors.cyan,),
              title: Text(options[index]),
              trailing:const Icon(Icons.arrow_forward_ios_outlined, color: Colors.cyan,),
              onTap: () {
                final names = options[index];
                print(names);
              },
            ),
        separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}
