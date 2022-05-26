import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/init/navigation_service.dart';
import 'package:medapp/routes/routes.dart';

void main() {
  runApp(const MyApp());
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
      initialRoute: "splash",
      onGenerateRoute: MyRoutes.instance.onGenerateRoute,
    );
  }
}
