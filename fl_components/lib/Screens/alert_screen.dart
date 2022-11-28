import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';



class AlertScreen extends StatelessWidget{
  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('No deberias estar aqui'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
            actions: [

              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel',style: TextStyle(color: Colors.red))
              ),

              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('ok')
              )
            ],
          );
        }
    );
  }

  void displayDialogAndroid(BuildContext context){

    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('No deberias estar aqui'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              
              TextButton(
              onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel',style: TextStyle(color: Colors.red))
              ),

              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('ok')
              )
            ],
          );
        }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas'),
        elevation: 5,
      ),
      body: Center(
        child: ElevatedButton(

        //style: ElevatedButton.styleFrom(
          //primary: Colors.cyan,
          //shape: StadiumBorder(),
          //elevation: 0
          //),
            //onPressed: () => displayDialogAndroid(context),
            onPressed: () => Platform.isAndroid
                ?displayDialogAndroid(context)
                :displayDialogIOS(context),
            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child:  Text('Mostrar Alerta', style: TextStyle(fontSize: 20)),
            ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.close ),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }

}