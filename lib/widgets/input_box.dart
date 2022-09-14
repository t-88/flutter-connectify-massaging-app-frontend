import 'package:connectify/consts.dart';
import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final onChange;
  InputBox({
    required this.label,
    required this.controller,
    this.isPassword: false,
    this.onChange: null,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final InputBorder sharedInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(
        10,
      ),
    );

    TextStyle sharedTextStyle({double txtOpacity = 1}) {
      return TextStyle(
        color: AppColors.white.withOpacity(txtOpacity),
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );
    }

    return Container(
      width: 300,
      child: TextField(
        cursorColor: AppColors.white,
        cursorWidth: 4,
        cursorHeight: 25,
        controller: controller,
        obscureText: isPassword,
        enableSuggestions: !isPassword,
        autocorrect: !isPassword,
        onChanged: onChange == null ? (_) {} : onChange,
        style: sharedTextStyle(),
        decoration: InputDecoration(
          label: Text(
            label,
            style: sharedTextStyle(),
          ),
          enabledBorder: sharedInputBorder,
          focusedBorder: sharedInputBorder,
        ),
      ),
    );
  }
}
