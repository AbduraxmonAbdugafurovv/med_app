import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import '../../../screens/home/bloc/cubit/home_cubit.dart';
import 'gender_types_row.dart';

InkWell genderTypesContaianer(
    BuildContext context, int gender, int index, text) {
  return InkWell(
    child: Container(
      height: context.height * 0.06,
      width: context.width * 0.4,
      decoration: BoxDecoration(
        color: gender == index
            ? ColorConst.blue.withOpacity(0.1)
            : Colors.transparent,
        border: Border.all(
            color: gender == index
                ? ColorConst.blue
                : ColorConst.black.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: genderType(gender, index, text),
    ),
    onTap: () {
      context.read<HomeCubit>().selectGender(index);
    },
  );
}
