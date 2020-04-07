import 'package:flutter/material.dart';
import 'dart:math';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: AnimateSquare()),
    );
  }
}

class AnimateSquare extends StatefulWidget {
  @override
  _AnimateSquareState createState() => _AnimateSquareState();
}

class _AnimateSquareState extends State<AnimateSquare>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> rotation;
  Animation<double> opacity;
  Animation<double> moveToRight;
  Animation<double> scale;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));

    rotation = Tween(begin: 0.0, end: 2.0 * pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));

    opacity = Tween(begin: 0.2, end: 1.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0, 0.25, curve: Curves.bounceOut)));

    moveToRight = Tween(begin: 0.0, end: 200.0).animate(controller);

    scale = Tween(begin: 0.0, end: 1.0).animate(controller);

    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        controller.repeat();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext contex, Widget child) {
        return Transform.translate(
          offset: Offset(moveToRight.value, 0),
          child: Transform.rotate(
              angle: rotation.value,
              child: Opacity(
                  opacity: opacity.value,
                  child: Transform.scale(
                      scale: scale.value, child: _Rectangulo()))),
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}
