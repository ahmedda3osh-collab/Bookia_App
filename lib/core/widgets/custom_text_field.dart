

import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.isPassword = false, this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure= true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType : widget.keyboardType,
      obscureText:widget.isPassword && isObscure,
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        suffixIcon:widget.isPassword? InkWell(
          onTap:(){
            setState((){
            isObscure=!isObscure;
            });
          },
          child: Icon(isObscure?Icons.visibility:Icons.visibility_off)):null,
        hintText: widget.hintText,
      ),
    );
  }
}
 