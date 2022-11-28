

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget{


  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              //divisions: 10,
              value: _sliderValue,
              onChanged: _sliderEnable ? (value) {
                _sliderValue=value;
                setState(() {});
              }
              :null
          ),

          /*Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
          ),

          Switch(
            value: _sliderEnable,
            onChanged:(value) => setState(() {_sliderEnable = value ?? true;})
          ),*/

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged:(value) => setState(() {_sliderEnable = value ?? true;}),
          ),

          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable,
            onChanged:(value) => setState(() {_sliderEnable = value;}),
          ),

          const AboutListTile(),


          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  image:NetworkImage('https://cdn130.picsart.com/305411012013211.png?to=crop&type=webp&r=1456x2511&q=85'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
              ),
            ),
          ),



        ],
      )
    );


  }
}

