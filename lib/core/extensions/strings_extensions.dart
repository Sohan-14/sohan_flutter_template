import 'package:flutter/services.dart';

extension StringExtensions on String {
  String get toCapitalize => isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
  String get toCamelCase => split(" ").map((word) => word.toCapitalize).join("");
  bool get isNumeric => double.tryParse(this) != null;
  bool get isValidUrl => Uri.tryParse(this)?.hasAbsolutePath ?? false;
  String removeSpaces() => replaceAll(' ', '');
  bool isValidEmail() => RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(this);
  Future<void> copyToClipboard() async => await Clipboard.setData(ClipboardData(text: this));
}
