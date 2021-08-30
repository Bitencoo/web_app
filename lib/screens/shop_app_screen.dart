import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ShopAppScreen extends StatefulWidget {
  ShopAppScreen({Key? key}) : super(key: key);

  @override
  _ShopAppScreenState createState() => _ShopAppScreenState();
}

class _ShopAppScreenState extends State<ShopAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopApp'),
      ),
      body: Stack(
        children: [
          Container(
            height: 100,
            width: 200,
            child: Image(
              image: AssetImage('assets/EY.png'),
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
          ),
          Center(
            child: Container(
              width: 25,
              height: 25,
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
