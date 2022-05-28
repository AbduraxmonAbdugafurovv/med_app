import 'package:flutter/material.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../constant/constant.dart';

Container addAccountButton(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: context.width,
    height: context.height * 0.06,
    decoration: BoxDecoration(
        color: ColorConst.blue.withOpacity(0.17),
        borderRadius: BorderRadius.circular(12)),
    child: Text(
      "Add another account",
      style: TextStyle(
          fontSize: FontConst.mediumFont + 2,
          color: ColorConst.blue.withOpacity(0.8),
          fontWeight: FontWeight.w600),
    ),
  );
}
