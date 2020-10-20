import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart' show required;
import 'dart:math' as math;

class Responsive {
  final double width, height, inch;
  
  Responsive({@required this.width,@required this.height,@required this.inch});

  factory Responsive.of(BuildContext context){
    final MediaQueryData data = MediaQuery.of(context);
    final size = data.size;

    final inch = math.sqrt(math.pow(size.width, 2) + math.pow(size.height, 2));
    return Responsive(height: size.height, width: size.width, inch: inch);
  }

  //width 
  double wp(double percent){
    return this.width* percent / 100;
  }

  //height
  double hp(double percent){
    return this.height* percent / 100;
  }

  //diagonal
  double ip(double percent){
    return this.inch* percent / 100;
  }
}