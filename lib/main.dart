import 'package:flutter/material.dart';
import 'package:flutter_login_example/builder_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Login Demo',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new BuilderPage(),
    );
  }
}