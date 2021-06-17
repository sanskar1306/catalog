import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home.dart';
import 'pages/login.dart'; 
void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
   return MaterialApp(
    //  home:HomePage(),
    debugShowCheckedModeBanner: false,
     themeMode:ThemeMode.light,
     theme:ThemeData(primarySwatch: Colors.deepPurple,fontFamily: GoogleFonts.lato().fontFamily),
     darkTheme: ThemeData(brightness: Brightness.dark),
     initialRoute: "/login",
     routes: {
       MyRoutes.homeRoute:(context)=>HomePage(),
       MyRoutes.loginRoute:(context)=>LoginPage(),
     },
     

   );
  }
}