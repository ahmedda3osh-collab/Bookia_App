

import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool?obscureText;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
 