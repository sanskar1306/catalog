import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);
  final imageUrl = "https://i.pravatar.cc/300";
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       borderRadius: BorderRadius.only(
          topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
          
      child: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            padding:EdgeInsets.zero,
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                      accountName: Text("Sanskar Kabra",
                      style:TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.w600,
                      )),
                      accountEmail: Text("sans1306@hotmail.com"),
                      currentAccountPicture:CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                      )
                      )
              ),
              ListTile(
                leading:Icon(CupertinoIcons.home,color:Colors.white),
                title: Text("Home",textScaleFactor: 1.5,style:TextStyle(
                  color: Colors.white,
                  
                ))
              ),
                ListTile(
                leading:Icon(CupertinoIcons.profile_circled,color:Colors.white),
                title: Text("Profile",textScaleFactor: 1.5,style:TextStyle(
                  color: Colors.white,
                  
                ))
              ),
                ListTile(
                leading:Icon(CupertinoIcons.mail,color:Colors.white),
                title: Text("Email me",textScaleFactor: 1.5,style:TextStyle(
                  color: Colors.white,
                  
                ))
              ),
               

            ],
          ),
        ),
      ),
    );
  }
}
