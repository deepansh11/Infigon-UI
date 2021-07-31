import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:internship_app/body.dart';

import 'custom_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Body(),
          appBar: AppBar(
              leading: Icon(Icons.keyboard_arrow_left),
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              title: Text(
                'My Admissions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              centerTitle: true),
          bottomNavigationBar: CustomBottomBar()),
    );
  }
}
