

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/init/navigation_service.dart';
import 'package:medapp/routes/routes.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TitleApp.title,
      theme: ThemeData(
        iconTheme: IconThemeData(color: ColorConst.black),
        primarySwatch: Colors.blue,
      ),
      navigatorKey: NavigationService.instance.navigatorKey,
      initialRoute: "bottomnav",
      onGenerateRoute: MyRoutes.instance.onGenerateRoute,
    );
  }
}
