import 'package:flutter/material.dart';
final days = 30;
class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Catalouge App"),
      ),
       body:Center(
       child:Center(
         child:Container(
           child:Text("Welcome to $days days of flutter"),
           
         )
       )
       ),
      //  drawer:Drawer(),
       
     );
  }
}