
  import 'package:flutter/material.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../constant/constant.dart';

Container saveButton(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.width * 0.34,
      height: context.height * 0.05,
      decoration: BoxDecoration(
        color: ColorConst.kPimaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        "Save changes",
        style: TextStyle(
            fontSize: FontConst.mediumFont,
            fontWeight: FontWeight.w500,
            color: ColorConst.white),
      ),
    );
  }
