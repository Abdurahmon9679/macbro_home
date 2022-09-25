import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_home/presenter/theme/appbar_theme.dart';
import 'package:macbro_home/presenter/theme/text_theme.dart';
import 'pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: appBarTheme,
        textTheme: textTheme,
      ),
      home:  const HomePage(),
    );
  }
}