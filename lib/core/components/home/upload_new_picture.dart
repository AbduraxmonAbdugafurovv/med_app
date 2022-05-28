import 'package:flutter/material.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../constant/constant.dart';

Container uploadPicture(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: context.width * 0.5,
    height: context.height * 0.06,
    decoration: BoxDecoration(
        color: ColorConst.kPimaryColor, borderRadius: BorderRadius.circular(7)),
    child: Text(
      "Upload new picture",
      style: TextStyle(
          fontSize: FontConst.mediumFont,
          color: ColorConst.white,
          fontWeight: FontWeight.w600),
    ),
  );
}
