class StringUtils {
  StringUtils._();

  static bool isNullOrEmpty(String? str) {
    return str == null || str.trim().isEmpty;
  }

  static String capitalize(String str) {
    if (isNullOrEmpty(str)) return str;
    return str[0].toUpperCase() + str.substring(1);
  }

  static bool isEmail(String str) {
    final RegExp regex = RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z]+');
    return regex.hasMatch(str);
  }
}
