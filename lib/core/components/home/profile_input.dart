import 'package:flutter/material.dart';
import 'inputborder.dart';

TextFormField profileInput(TextEditingController controller) {
  return TextFormField(
    // initialValue: contr,
    controller: controller,
    decoration: InputDecoration(
      border: inputBorder(),
    ),
    validator: (value) {
      if (value!.length < 4) {
        return "4 tadan kam bo'lmasligi lozim";
      }
    },
  );
}
