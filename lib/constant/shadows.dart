import 'package:flutter/rendering.dart';

class Shadows {
  static const BoxShadow primaryShadow = BoxShadow(
    color: Color.fromARGB(13, 0, 0, 0),
    offset: Offset(0, 2),
    blurRadius: 5,
  );
  static const BoxShadow secondaryShadow = BoxShadow(
    color: Color.fromARGB(128, 216, 221, 230),
    offset: Offset(0, 8),
    blurRadius: 14,
  );
}
