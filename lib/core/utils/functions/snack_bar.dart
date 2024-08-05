import 'package:flutter/material.dart';

void snackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text(
        text,
      ),
    ),
  );
}
