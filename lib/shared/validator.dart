import 'package:softpal_techno/shared/regex.dart';

class Validator {
  static bool checkName({required String? name}) {
    if (name != null) {
      if (name.isEmpty) return false;
      return RegexExpressions.name.hasMatch(name);
    }
    return false;
  }

  static bool checkEmail({required String? email}) {
    if (email != null) {
      if (email.isEmpty) return false;
      return RegexExpressions.email.hasMatch(email);
    }
    return false;
  }

  static bool checkMobileNumber({required String? mobile}) {
    if (mobile != null) {
      return mobile.trim().length == 10;
    }
    return false;
  }

  static bool checkZipCode({required String? zipcode}) {
    if (zipcode != null) {
      if (zipcode.isEmpty) return false;
      if (zipcode.length > 3 && zipcode.length <= 11)
        return RegexExpressions.zipCode.hasMatch(zipcode);
    }
    return false;
  }

  static bool checkAddress({required String? address}) {
    if (address != null) {
      if (address.isEmpty) return false;

      return RegexExpressions.address.hasMatch(address);
    }
    return false;
  }

  static bool checkOtp({required String otp}) {
    if (otp.length == 6) return RegexExpressions.otp.hasMatch(otp);
    return false;
  }

  static bool phoneNumber({required String phoneNumber}) {
    if (phoneNumber.length == 10)
      return RegexExpressions.phoneNumber.hasMatch(phoneNumber);
    return false;
  }

  static bool checkIsEmpty(String? string) {
    if (string == null)
      return true;
    else if (string.trim().isEmpty) return true;
    return false;
  }
}
