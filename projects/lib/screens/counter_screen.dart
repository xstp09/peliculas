import 'package:flutter/material.dart';
import 'package:projects/screens/counter_screen.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}): super( key: key );

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase(){
    counter++;
    setState(() {});
  }

  void reset(){
    counter=0;
    setState(() {});
  }

  void decrease(){
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontsize= TextStyle(fontSize: 20);

   return  Scaffold(
     appBar: AppBar(
       title: const Text('RG´S CounterScreen'),
       elevation: 10,
     ),
     backgroundColor: Colors.grey,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             const Text('Clicks', style: fontsize ,),
             Text('$counter',style: fontsize,),
           ],
         ),
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton: CustomfloatingActions(
       increaseFn: increase,
       decreaseFn: decrease,
       resetFn: reset,
     ),
     );
  }
}

class CustomfloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomfloatingActions ({
    Key? key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decreaseFn(),
         ),

        FloatingActionButton(
          child: const Icon(Icons.lock_reset_outlined),
          onPressed: () => resetFn(),
         ),

        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () =>increaseFn(),
         ),

      ],
    );
  }
}