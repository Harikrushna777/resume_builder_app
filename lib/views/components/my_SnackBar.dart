import 'package:flutter/material.dart';

SnackBar mySnackBar({required String text, required Color color}) {
  return SnackBar(
    duration: const Duration(seconds: 3),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    content: Text(text),
  );
}
