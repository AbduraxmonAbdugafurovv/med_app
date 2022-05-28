
  import 'package:flutter/material.dart';

TextFormField inputfield(text,controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      validator: (value) {
        if (value!.length < 4) {
          return "4 tadan kam";
        }
        return null;
      },
    );
  }
