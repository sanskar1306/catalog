import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/drawer.dart';
final days = 30;
class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color:Colors.black),
        title:Text("Catalog App",style:TextStyle(color: Colors.black)),
      ),
       body:Center(
       child:Center(
         child:Container(
           child:Text("Welcome to $days days of flutter"),
           
         )
       )
       ),
       drawer:MyDrawer(),
       
     );
  }
}