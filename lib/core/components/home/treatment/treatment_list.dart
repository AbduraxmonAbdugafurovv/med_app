import 'package:flutter/material.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../../constant/constant.dart';

SizedBox treatmentList(BuildContext context) {
  return SizedBox(
    height: context.height * 0.13,
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Aortic ",
                style: TextStyle(
                    fontSize: FontConst.mediumFont + 2,
                    fontWeight: FontWeight.w600),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  size: 33,
                  color: ColorConst.black.withOpacity(0.4),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              'Mamurov abbos',
              style: TextStyle(
                  fontSize: FontConst.mediumFont, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 7),
            child: Text(
              "Familiy clinic",
              style: TextStyle(
                  fontSize: FontConst.mediumFont - 2,
                  fontWeight: FontWeight.w500,
                  color: ColorConst.black.withOpacity(0.5)),
            ),
          ),
          Divider(
            color: ColorConst.black.withOpacity(0.5),
          )
        ],
      ),
    ),
  );
}
