import 'package:flutter/material.dart';

class AppColors {
  static const Color appBarTitleColor = Colors.white;
  static const Color example = Color.fromARGB(255, 255, 255, 255);
  static const Color deviceNoDetect = Colors.red;
  static const Color homeScreenBackgroundWhite = Colors.white;
  static const Color primaryText = Colors.black;
  static const Color homeScreenBackground = Color.fromRGBO(247, 251, 255, 1);
  static const dark_turquoise = const Color(0xff054c5c);
  static const labelcolor = const Color(0x520a97b7);
  static Color tabBorder = _hexToColor('31c4c3');
  static Color tabActive = _hexToColor('bdefeb');
  static Color tabInactive = Color.fromRGBO(189, 239, 235, 0.1);
  static Color heading = _hexToColor('0a97b7');
  static Color border = _hexToColor('c1c1c1');
  static Color device_heading = _hexToColor('054c5c');
  static Color hintLabel = _hexToColor('979797');
  static Color doctorCardBorder = Color(0xffc1c1c1);
  static Color doctorCardHint = Color(0xffc1c1c1);
  static Color doctorCardName = Color(0xff31c4c3);
  static const Color doctorCardText = Color(0xff0a97b7);
  static Color iconContainerFiller1 = Color(0xffd6f0f3);
  static Color editIconColor = Color(0xFF404040);
  static Color onlineDoctor = Color(0xff32c371);
  static Color appBarColor = tabActive;
  static Color paymentButtonTextColor = Color(0xffabf2ca);
  static Color paymentTextColor = _hexToColor('259f5a');
  static Color paymentButtonColor = _hexToColor('abf2ca');
  static Color homeTabViewColor1 = Color(0xff054c5c);
  static Color actionChipColor = _hexToColor('d6f0f3');
  static Color white = _hexToColor('ffffff');
  static Color backgroundColor = Color(0xffbdefeb);
  static Color box_decoration = Color(0xffeefbfa);
  static Color borderColor = Color(0x40bdefeb);
  static Color text_field_text_color = Color(0xff707070);
  static Color border_color = _hexToColor('f7fbff');
  static Color tealish = Color(0x5931c4c3);
  static Color turquoiseBlue = _hexToColor('1099b8');
  static Color signupScreen = _hexToColor('054c5c');
  static Color otpText = _hexToColor('054c5c');
  static Color errorTextColor = Colors.red;
  static Color cool_green = _hexToColor('32c371');
  static Color maroon = _hexToColor('bc1817');
  static Color yellow = _hexToColor('fbb13c');
  static Color sherpa_blue = _hexToColor('054c5c');
  static Color warm_grey = _hexToColor('707070');
  static Color pinkish_grey = _hexToColor('c1c1c1');
  static Color grey = const Color(0xff707070);
  static Color emergencyBackGround = Color(0x59d11614);
  static const emergencyColor = Color(0xffbc1817);
  static Color dark_blue_grey = _hexToColor('143138');
  static Color purple = _hexToColor('744fc6');
  static const tealish_15 = const Color(0x2631c4c3);
  static const cornflower_blue_10 = const Color(0x1a5b91cf);
  static const cobalt = const Color(0xff1c518f);
  static const light_indigo_10 = const Color(0x1a744fc6);
  static const blue_purple = const Color(0xff4e28a1);
  static const butterscotch_10 = const Color(0x1afbb13c);
  static const butterscotch = const Color(0xfffbb13c);
  static const rusty_red_35_10 = const Color(0x1ad11614);
  static const AUDIO_CALL = Color(0xff4f86c6);
  static const HOSPITAl = Color(0xfffbb13c);
  static const VIDEO_CALL = Color(0x5931c4c3);
  static Color LIGHT_TEAL = _hexToColor('bdefeb');
}

class OtpFieldStyle {
  /// The background color for outlined box.
  final Color backgroundColor;

  /// The border color text field.
  final Color borderColor;

  /// The border color of text field when in focus.
  final Color focusBorderColor;

  /// The border color of text field when disabled.
  final Color disabledBorderColor;

  /// The border color of text field when in focus.
  final Color enabledBorderColor;

  /// The border color of text field when disabled.
  final Color errorBorderColor;

  OtpFieldStyle(
      {this.backgroundColor: Colors.transparent,
      this.borderColor: Colors.black26,
      this.focusBorderColor: Colors.blue,
      this.disabledBorderColor: Colors.grey,
      this.enabledBorderColor: Colors.black26,
      this.errorBorderColor: Colors.red});
}

Color _hexToColor(String code) {
  return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
}
