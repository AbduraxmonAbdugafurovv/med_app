import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';

Container mainButton(
  BuildContext context,
  text,
) {
  return Container(
    alignment: Alignment.center,
    width: context.width * 0.9,
    height: context.height * 0.06,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorConst.kPimaryColor),
    child: Text(
      text,
      style:
          TextStyle(fontSize: FontConst.largeFont - 2, color: ColorConst.white),
    ),
  );
}
