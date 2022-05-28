import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../screens/home/bloc/cubit/home_cubit.dart';

SwitchListTile sWitch(bool profileVisibl, BuildContext context) {
    return SwitchListTile.adaptive(
      title: const Text("Profile visibilty"),
      value: profileVisibl,
      onChanged: (v) {
        context.read<HomeCubit>().changeProfileVis();
      },
    );
  }