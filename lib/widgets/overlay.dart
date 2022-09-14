import 'package:flutter/material.dart';

class MyOverlay extends StatelessWidget {
  final callback;
  const MyOverlay({required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black.withOpacity(0.65),
      ),
    );
  }
}
