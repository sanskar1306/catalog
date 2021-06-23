import 'package:flutter/material.dart';
import 'package:flutter_application/pages/cart.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:flutter_application/widgets/themes.dart';
import 'pages/home.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => Cart()
      },
    );
  }
}
