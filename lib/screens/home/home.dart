import 'package:easy_shop/screens/home/components/body.dart';
import 'package:easy_shop/services/twiceToExit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        child: BodyContent(
          title: 'Flutter is amazing :)',
        ),
        onWillPop: onWillPop,
      ),
    );
  }
}
