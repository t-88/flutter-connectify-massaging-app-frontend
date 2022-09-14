import 'package:connectify/consts.dart';
import 'package:flutter/material.dart';

class LoggingPageLoadingIndicator extends StatelessWidget {
  const LoggingPageLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(0.4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: AppColors.purple,
            strokeWidth: 5,
          ),
        ],
      ),
    );
  }
}
