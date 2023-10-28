import 'package:bookreview/src/common/components/app_font.dart';
import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const Btn({required this.onTap, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: const Color(0xffF4AA2B),
        ),
        child: AppFont(
          text: text,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
