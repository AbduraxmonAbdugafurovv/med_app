import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';

Padding textModal(BuildContext context, text) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.25, vertical: context.height * 0.02),
    child: Text(
      text,
      style: TextStyle(
          fontSize: FontConst.largeFont,
          fontWeight: FontWeight.w600,
          color: ColorConst.blue),
    ),
  );
}
