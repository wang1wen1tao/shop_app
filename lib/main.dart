import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:fluro/fluro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          title: '百新',
          // debugShowCheckedModeBanner：去除debug
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.pink),
          home: IndexPage()),
    );
  }
}
