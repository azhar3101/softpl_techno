class RegexExpressions {
  static RegExp name = RegExp(
    r"^[a-zA-Z]+(([a-zA-Z ])?[a-zA-Z]*)*$",
  );
  static RegExp phno = RegExp(r'^[0-9]+$');
  static RegExp email = RegExp(
      r'^(([^<>()\]\\.,;:\s@"]+(\.[^<>()\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static RegExp otp = RegExp(r"^\d{6}$");
  static RegExp phoneNumber = RegExp(r"^\d{10}$");
  static RegExp zipCode = RegExp(r"^[a-z0-9][a-z0-9\- ]{0,10}[a-z0-9]$");
  static RegExp address = RegExp(r"^([a-zA-z0-9/\\''(),-\s]{2,230})$");
}
