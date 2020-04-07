import 'package:flutter/material.dart';

import 'package:designs/src/pages/header_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HeaderPage());
  }
}
