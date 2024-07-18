import 'package:flutter/material.dart';

class CustomPopupMenuItem<T> extends PopupMenuItem<T> {
  final Widget child;

  CustomPopupMenuItem({
    required this.child,
    required T value,
    bool enabled = true,
  }) : super(
        value: value,
        child: child,
        enabled: enabled,
      );
}
