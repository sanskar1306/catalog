import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.make(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          items: [
            BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
          ],
        ),
        
        );
  }
}
