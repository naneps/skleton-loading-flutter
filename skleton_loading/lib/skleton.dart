import 'package:flutter/material.dart';
import 'package:skleton_loading/constants.dart';

class Skleton extends StatelessWidget {
  final double? height, width;
  const Skleton({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
    );
  }
}

class CircleSkleton extends StatelessWidget {
  const CircleSkleton({Key? key, this.size}) : super(key: key);
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.04),
          shape: BoxShape.circle),
    );
  }
}
