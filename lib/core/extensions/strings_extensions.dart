import 'package:flutter/services.dart';

extension StringExtensions on String {
  String capitalize() => isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
  String removeSpaces() => replaceAll(' ', '');
  bool isValidEmail() => RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(this);
  Future<void> copyToClipboard() async => await Clipboard.setData(ClipboardData(text: this));
}
