import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:GradientContainer(Color.fromARGB(255, 26, 2, 80),Color.fromARGB(255, 11, 46, 126))
      ),
    ),
  );
}


