// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String label;
  final Color textColor;
  final double fontSize;
  final void Function() onTap;
  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.label,
    required this.textColor,
    required this.fontSize,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
