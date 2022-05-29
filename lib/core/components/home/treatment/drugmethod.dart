
  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../../constant/constant.dart';

SizedBox drugMethod(BuildContext context) {
    return SizedBox(
      height: context.height * 0.1,
      child: Column(
        children: [
          SizedBox(
            height: context.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dilatroban",
                      style: TextStyle(
                        fontSize: FontConst.mediumFont + 2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SvgPicture.asset("assets/icons/right.svg")
                  ],
                ),
                SizedBox(
                  height: context.height * 0.027,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "100 ml",
                      style: TextStyle(
                          fontSize: FontConst.mediumFont - 2,
                          color: ColorConst.black.withOpacity(0.4)),
                    ),
                    Text(
                      "Start - End",
                      style: TextStyle(
                          fontSize: FontConst.mediumFont - 2,
                          color: ColorConst.black.withOpacity(0.4)),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.004,
                ),
              ],
            ),
          ),
          Divider(
            color: ColorConst.black.withOpacity(0.4),
          )
        ],
      ),
    );
  }
