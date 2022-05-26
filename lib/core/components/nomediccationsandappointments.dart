import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';

Column medicationappoint(BuildContext context, text1, text2) {
  return Column(
    children: [
      SizedBox(
        height: context.height * 0.2,
      ),
      Text(
        text1,
        style: TextStyle(
            fontSize: FontConst.extraLargeFont + 2,
            fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: context.height * 0.03,
      ),
      Text(
        text2,
        style: TextStyle(
            fontSize: FontConst.mediumFont,
            color: ColorConst.black.withOpacity(0.5),
            fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: context.height * 0.15,
      ),
    ],
  );
}
