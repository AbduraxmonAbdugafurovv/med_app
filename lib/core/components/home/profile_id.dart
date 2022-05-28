
  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../constant/constant.dart';

Container profileID(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height * 0.06,
      decoration: BoxDecoration(
          color: ColorConst.black.withOpacity(0.1),
          border: Border.all(),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Expanded(child: Text("2343534534")),
            InkWell(
              child: SvgPicture.asset("assets/icons/copy.svg"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
