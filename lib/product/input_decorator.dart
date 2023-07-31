import 'package:flutter/material.dart';

import 'languages.dart';

class InputDecorators {
  static bool obscureText = true;
  static IconData suffixIcon = Icons.visibility;
  static IconData suffixIconOff = Icons.visibility_off_outlined;

  final emailDecorator = const InputDecoration(
    labelText: Languages.mailTitle,
    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
    prefixIcon: Icon(Icons.mail_outlined),
  );
  final passwordDecorator = InputDecoration(
    labelText: Languages.password,
    border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
    prefixIcon: const Icon(Icons.lock_outline_sharp),
    suffixIcon: IconButton(
        onPressed: () {
          obscureText = !obscureText;
        },
        icon: Icon(obscureText ? suffixIconOff : suffixIcon)),
  );
}
