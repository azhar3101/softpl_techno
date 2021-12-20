import 'package:flutter/material.dart';
import 'package:softpal_techno/constant/colors.dart';
import 'package:softpal_techno/constant/radii.dart';
import 'package:softpal_techno/shared/validator.dart';

getImage(imagePath) {
  return Image.asset(
    imagePath,
    fit: BoxFit.fill,
  );
}

getIconButton(IconData iconName, Color color) {
  return Icon(
    iconName,
    color: color,
    size: IconSize.iconSize30x,
  );
}
