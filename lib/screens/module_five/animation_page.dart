import 'dart:math';

import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool _isBig = false;
  double _size = 100.0;
  final Tween<double> _animationTween = Tween(begin: 0, end: pi * 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              color: Colors.blue,
              height: _size,
              width: _size,
            ),
            ElevatedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                  _size = _isBig ? 200 : 100;
                  _isBig = !_isBig;
                });
              },
            ),
            TweenAnimationBuilder<double>(
              tween: _animationTween,
              duration: Duration(seconds: 3),
              builder: (context, double value, child) {
                return Transform.rotate(
                  angle: value,
                  child: Container(
                    color: Colors.blue,
                    height: _size,
                    width: _size,
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}