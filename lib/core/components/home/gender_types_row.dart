
  import 'package:flutter/cupertino.dart';

import '../../constant/constant.dart';

Row genderType(int gender, int index, text) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              border: Border.all(
                  width: gender == index ? 5 : 1,
                  color: gender == index
                      ? ColorConst.blue
                      : ColorConst.black.withOpacity(0.6)),
              borderRadius: BorderRadius.circular(10)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: TextStyle(fontSize: FontConst.mediumFont + 2),
          ),
        )
      ],
    );
  }
