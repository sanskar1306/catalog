import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState.validate()){

    
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(milliseconds: 800));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_im.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome $name",
                  style: GoogleFonts.oswald(
                    // textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Username cannot be empty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      TextFormField(
                        obscureText: true,
                        
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password cannot be empty";
                            }
                            else if (value.length<6) {
                              return "Password length should be atleast 6";
                            }
                            return null;
                          },
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Material(
                  color: changeButton ? Colors.green : Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 20 : 5),
                  child: InkWell(
                    splashColor: Colors.lightGreen,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 800),
                      height: 40,
                      width: changeButton ? 40 : 100,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
