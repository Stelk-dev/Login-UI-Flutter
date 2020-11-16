import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
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
                SizedBox(
                  height: 40,
                ),
                Text('Create Account',
                    style: TextStyle(
                      color: Color.fromRGBO(250, 107, 62, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 70,
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
                    style: TextStyle(
                        color: Color.fromRGBO(247, 163, 153, 1), fontSize: 20),
                    decoration: InputDecoration(
                        hintText: 'email',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 212, 195, 1),
                            fontSize: 20),
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.email,
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
                        hintText: 'confirm password',
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
                      'REGISTER',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
