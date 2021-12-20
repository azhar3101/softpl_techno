import 'package:flutter/material.dart';

class ProgressHUD extends StatelessWidget {
  final Widget child;
  final bool isAsyncCall;
  final double opacity;
  final Color color;

  ProgressHUD({
    Key? key,
    required this.child,
    required this.isAsyncCall,
    required this.opacity,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
