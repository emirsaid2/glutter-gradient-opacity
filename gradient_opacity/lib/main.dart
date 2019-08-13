import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Gradient Opacity"),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (Rectangle) {
              return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, Rectangle.width, Rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: 300,
              height: 500,
              image: NetworkImage(
                  "https://image.winudf.com/v2/image1/Y29tLml0enkuY2hlZXNlLnBob3RvX3NjcmVlbl8xXzE1NDk5MzU1ODdfMDE4/screen-1.jpg?fakeurl=1&type=.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
