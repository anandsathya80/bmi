import 'package:flutter/material.dart';
import 'bmi.dart';

void main() => runApp(MaterialApp(
  home: inputBmi(),
  routes: <String, WidgetBuilder>{
    '/inputBmi' : (BuildContext context) => new inputBmi(),
    '/inputBmi2' : (BuildContext context) => inputBmi(),
  },
)
);

