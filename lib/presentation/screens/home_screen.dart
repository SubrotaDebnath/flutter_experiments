
import 'package:flutter/material.dart';
import 'package:flutter_experiments/helper/adaptive_widgets_builder.dart';
import 'package:flutter_experiments/helper/enums.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: AdaptiveWidgetsBuilder(
        builder: (BuildContext context, DeviceMood deviceMood) {
          if(deviceMood == DeviceMood.landscapeMobile){
            //Mark:- 1. Refactor center Widgets to Reuse Code.
            return const Center(child:  Text('Landscape mobile'),);
          }else if(deviceMood == DeviceMood.portraitMobile){
            return const Center(child:  Text("Portrait Mobile"),);
          }else if(deviceMood == DeviceMood.landscapeTablet){
            return const Center(child:  Text("Landscape Tablet"),);
          }else if(deviceMood == DeviceMood.portraitTablet){
            return const Center(child:  Text("Portrait Tablet"),);
          }
          return const Center(child:  Text("I don't know"),);
        },
      ),
    );
  }
}
