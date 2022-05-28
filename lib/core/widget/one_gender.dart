import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medapp/core/extension/context_ex.dart';
import '../../screens/home/bloc/cubit/home_cubit.dart';
import '../components/home/gender_types_row.dart';
import '../constant/constant.dart';

InkWell oneGender(BuildContext context, int gender) {
  return InkWell(
    child: Container(
      width: context.width,
      height: context.height * 0.06,
      decoration: BoxDecoration(
        color:
            gender == 2 ? ColorConst.blue.withOpacity(0.2) : Colors.transparent,
        border: Border.all(
          color:
              gender == 2 ? ColorConst.blue : ColorConst.black.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: genderType(gender, 2, "Prefer not to say "),
    ),
    onTap: () {
      context.read<HomeCubit>().selectGender(2);
    },
  );
}
