import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget centered() => Center(child: this);
  Widget visible(bool isVisible) => isVisible ? this : SizedBox.shrink();
}
