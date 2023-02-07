import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double sliderValue = 100;
  bool sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primaryColor,
            value: sliderValue, 
            onChanged: sliderEnabled ? 
            (value) {
              sliderValue = value;
              setState(() {}); 
            }
            :
            null
          ),

          /*Checkbox(
            value: true, 
            onChanged: (value) {
              sliderEnabled = value ?? true;
              setState(() {});
            }
          ),*/

          CheckboxListTile(
            activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar slider'),
            value: sliderEnabled,
            onChanged: (value) {
              sliderEnabled = value ?? true;
              setState(() {});
            }
          ),

          /*Switch(
            value: sliderEnabled, 
            onChanged: (value) {
              sliderEnabled = value;
            }
          ),*/

          SwitchListTile.adaptive(
            activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar slider'),
            value: sliderEnabled,
            onChanged: (value) {
              sliderEnabled = value;
              setState(() {});
            }
          ),

          const AboutListTile(),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8N3x8fGVufDB8fHx8&w=1000&q=80'),
                fit: BoxFit.contain,
                width: sliderValue,
              ),
            ),
          ),
      
        ],
      )
    );
  }
}