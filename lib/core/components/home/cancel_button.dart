import 'package:flutter/cupertino.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../constant/constant.dart';

Container cencelButton(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: context.width * 0.24,
    height: context.height * 0.05,
    decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Text(
      "Cancel",
      style: TextStyle(
          fontSize: FontConst.mediumFont, fontWeight: FontWeight.w500),
    ),
  );
}
