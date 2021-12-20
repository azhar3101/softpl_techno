import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'colors.dart';

class Borders {
  static BorderSide doctorProfileButtonBorder = BorderSide(
    width: 0.5,
    color: AppColors.heading,
    style: BorderStyle.solid,
  );
  static BorderSide homeTabViewBorder = BorderSide(
    color: AppColors.tabBorder,
    width: 1,
    style: BorderStyle.solid,
  );
  static const BorderSide primaryBorder = BorderSide(
    color: Color.fromARGB(255, 151, 151, 151),
    width: 1,
    style: BorderStyle.solid,
  );
  static const BorderSide noBorder = BorderSide(
    color: Colors.transparent,
    width: 1,
    style: BorderStyle.solid,
  );
  static BorderSide doctorCardBorder = BorderSide(
    width: 0.5,
    color: AppColors.doctorCardBorder,
    style: BorderStyle.solid,
  );
  static const BorderSide secondaryBorder = BorderSide(
    color: Color.fromARGB(255, 227, 232, 237),
    width: 1,
    style: BorderStyle.solid,
  );
  static const BorderSide errorBorder = BorderSide(
    color: Color.fromARGB(255, 255, 0, 0),
    width: 1,
    style: BorderStyle.solid,
  );
  static BorderSide tabBorder = BorderSide(
    color: AppColors.tabBorder,
    width: 1,
    style: BorderStyle.solid,
  );
  static const BorderRadius border29x = BorderRadius.all(Radius.circular(29));

  static BorderSide emptyBorder = BorderSide();
}

class Margins {
  static const EdgeInsets k48top = EdgeInsets.only(top: 48);
  static const EdgeInsets baseMarginVertical =
      EdgeInsets.only(top: 10, bottom: 10);
  static const EdgeInsets baseMarginHorizontalScreen =
      EdgeInsets.only(left: 16, right: 16);
  static const EdgeInsets baseMarginHorizontal =
      EdgeInsets.only(left: 10, right: 10);
  static const EdgeInsets baseMarginAll = EdgeInsets.all(10);
  static const EdgeInsets margin12x = EdgeInsets.all(12);
  static const EdgeInsets nitificationPadding =
      EdgeInsets.only(top: 10, left: 40);
  static const EdgeInsets nitificationPaddingListView =
      EdgeInsets.only(top: 12, left: 12, right: 12);
  static const EdgeInsets baseMarginHorizontalScreenLeft =
      EdgeInsets.only(left: 16);
  static const EdgeInsets symmetricmargin40x =
      EdgeInsets.symmetric(horizontal: 40);
  static const EdgeInsets baseMarginAllScreen =
      EdgeInsets.only(left: 16.0, right: 16.0, top: 5, bottom: 5);
  static const EdgeInsets k16pall = EdgeInsets.all(16);
  static const EdgeInsets k5ptright = EdgeInsets.only(right: 5);
  static const EdgeInsets k10ptright = EdgeInsets.fromLTRB(0, 0, 10, 0);
  static const EdgeInsets k10ptleft = EdgeInsets.fromLTRB(10, 0, 0, 0);
  static SizedBox k10ptbottom([double height = 10]) => SizedBox(
        height: height,
      );
  static const EdgeInsets paddingText2 = EdgeInsets.only(top: 15, left: 8);
  static const EdgeInsets paddingText = EdgeInsets.only(top: 15, left: 70);
  static const EdgeInsets doctorCardMargin = EdgeInsets.fromLTRB(10, 5, 10, 5);
  static const EdgeInsets circularAvatarPadding =
      EdgeInsets.only(top: 20, right: 30);
  static const BorderRadius border29x = BorderRadius.all(Radius.circular(29));
  static const EdgeInsets k5bottom = EdgeInsets.only(bottom: 10);
  static const EdgeInsets k4all = EdgeInsets.all(4.0);
  static const EdgeInsets k8leftRight = EdgeInsets.only(left: 8.0, right: 8.0);
  static const EdgeInsets k4leftRight = EdgeInsets.only(left: 4.0, right: 4.0);
  static const EdgeInsets k10bottom = EdgeInsets.only(bottom: 20);
}

class padding {
  static const double paddintSize8x = 8;
  static const double paddintSize6x = 6;
  static const double paddintSize4x = 4;
  static const double paddintSize9x = 9;
  static const double paddintSize10x = 10;
  static const double paddintSize12x = 12;
  static const double paddintSize13x = 13;
  static const double paddintSize14x = 14;
  static const double paddintSize16x = 16;
  static const double paddintSize18x = 18;
  static const double paddintSize20x = 20;
  static const double paddintSize25x = 25;

  static const double paddintSize22x = 22;
  static const double paddintSize24x = 24;
  static const double paddintSize26x = 26;
  static const double paddintSize28x = 28;
  static const double paddintSize30x = 30;
  static const double paddintSize32x = 32;
  static const double paddintSize34x = 34;
  static const double paddintSize35x = 35;
  static const double paddintSize36x = 36;
  static const double paddintSize38x = 38;
  static const double paddintSize40x = 40;
  static const double paddintSize42x = 42;
  static const double paddintSize44x = 44;
  static const double paddintSize46x = 46;
  static const double paddintSize48x = 48;
  static const double paddintSize50x = 50;
  static const double paddintSize52x = 52;
  static const double paddintSize54x = 54;
  static const double paddintSize80x = 80;
  static const double paddintSize70x = 70;
  static const double paddintSize185x = 185;
}
