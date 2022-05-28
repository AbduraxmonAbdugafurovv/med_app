import 'package:flutter/material.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../constant/constant.dart';

Container logoutButton(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: context.width,
    height: context.height * 0.06,
    decoration: BoxDecoration(
        color: ColorConst.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12)),
    child: Text(
      "Log out",
      style: TextStyle(
        fontSize: FontConst.mediumFont + 2,
        fontWeight: FontWeight.w600,
        color: ColorConst.red,
      ),
    ),
  );
}
