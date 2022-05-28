
  import 'package:flutter/material.dart';

import '../../constant/constant.dart';

Text textProfileVisibilty() {
    return Text(
      "By switching  on you let doctors access all your personal informations",
      style: TextStyle(
          fontSize: FontConst.mediumFont - 2,
          color: ColorConst.black.withOpacity(0.6),
          fontWeight: FontWeight.w500),
    );
  }