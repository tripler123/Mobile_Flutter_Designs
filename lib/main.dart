import 'package:flutter/material.dart';

// import 'package:designs/src/pages/header_page.dart';
// import 'package:designs/src/pages/animations_page.dart';
import 'package:designs/src/pages/slideshow_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: SlideShowPage());
  }
}

