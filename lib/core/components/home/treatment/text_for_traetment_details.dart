
  import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';

textForTreatmentDetails2(text) => Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Text(
          text,
          style: TextStyle(
              fontSize: FontConst.mediumFont + 2, fontWeight: FontWeight.w600),
        ),
      );

  Padding textForTreatmentDetails(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Text(
        text,
        style: TextStyle(
            fontSize: FontConst.mediumFont,
            color: ColorConst.black.withOpacity(0.4)),
      ),
    );
  }
