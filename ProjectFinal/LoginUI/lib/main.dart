import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/services.dart';
import 'register.dart';

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
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Color.fromRGBO(250, 107, 62, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(
                        color: Color.fromRGBO(247, 163, 153, 1), fontSize: 20),
                    decoration: InputDecoration(
                        hintText: 'username',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 212, 195, 1),
                            fontSize: 20),
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.account_circle_outlined,
                            color: Color.fromRGBO(255, 212, 195, 1),
                          ),
                        )),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(248, 245, 240, 1)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(
                        color: Color.fromRGBO(247, 163, 153, 1), fontSize: 20),
                    decoration: InputDecoration(
                        hintText: 'password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 212, 195, 1),
                            fontSize: 20),
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.lock,
                            color: Color.fromRGBO(255, 212, 195, 1),
                          ),
                        )),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(248, 245, 240, 1)),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 280,
                  height: 50,
                  child: FlatButton(
                    color: Color.fromRGBO(255, 105, 70, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {},
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                //Google button
                GoogleAuthButton(
                  onPressed: () {},
                  borderRadius: 30,
                ),
                SizedBox(
                  height: 13,
                ),
                //Facebook button
                FacebookAuthButton(
                  onPressed: () {},
                  borderRadius: 30,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      child: Text(
                        'Create account',
                        style: TextStyle(color: Color.fromRGBO(239, 99, 81, 1)),
                      ),
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  CreateAccount(),
                        ));
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
