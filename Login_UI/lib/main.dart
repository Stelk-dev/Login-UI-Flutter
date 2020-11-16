import 'package:Login_UI/register.dart';
import 'package:auth_buttons/res/buttons/facebook_auth_button.dart';
import 'package:auth_buttons/res/buttons/google_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FocusNode focusNode = new FocusNode(descendantsAreFocusable: false);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/1.png'), fit: BoxFit.cover)),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome',
                    style: TextStyle(
                      color: Color.fromRGBO(250, 107, 62, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(
                        color: Color.fromRGBO(247, 163, 153, 1), fontSize: 20),
                    decoration: InputDecoration(
                        hintText: 'username',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 212, 195, 1),
                            fontSize: 20),
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.account_circle_rounded,
                            color: Color.fromRGBO(255, 212, 195, 1),
                          ),
                        )),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(248, 245, 240, 1),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.sentences,
                    obscureText: true,
                    style: TextStyle(
                        color: Color.fromRGBO(247, 163, 153, 1), fontSize: 20),
                    decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 212, 195, 1),
                            fontSize: 20),
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.lock_outline_rounded,
                            color: Color.fromRGBO(255, 212, 195, 1),
                          ),
                        )),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(248, 245, 240, 1),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 280,
                  height: 50,
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {},
                    color: Color.fromRGBO(255, 105, 70, 1),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                GoogleAuthButton(
                  onPressed: () {},
                  borderRadius: 30,
                ),
                SizedBox(
                  height: 12,
                ),
                FacebookAuthButton(
                  onPressed: () {},
                  borderRadius: 30,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SignIn(),
                        ));
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: Color.fromRGBO(239, 99, 81, 1)),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
