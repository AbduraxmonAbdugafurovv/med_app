  import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';

 textBeforeInput(text) => Padding(
   padding: const EdgeInsets.symmetric(vertical: 10),
   child: Text(
          text,
          style: TextStyle(
            fontSize: FontConst.mediumFont,
          ),
        ),
 );