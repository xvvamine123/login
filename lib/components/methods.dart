import 'package:flutter/material.dart';

InputDecoration inputDecoration(String label) {
  return InputDecoration(
    label: Text(label),
    hintText: 'Enter $label',
    hintStyle: const TextStyle(
      color: Colors.black26,
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black12, // Default border color
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black12, // Default border color
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

String? validatorr(value, String label) {
  if (value == null || value.isEmpty) {
    return 'Please enter $label';
  }
  return null;
}
