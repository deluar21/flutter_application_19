import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_19/provider/counter.dart';
import 'package:flutter_application_19/provider/home.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      home: ChangeNotifierProvider<counter>(
        create: (context) => counter(),
        child: Homepage(Title: 'Provider Class'),
      ),
    );
  }
}
