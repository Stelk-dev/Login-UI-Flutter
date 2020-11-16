import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  CreateAccountState createState() => CreateAccountState();
}

class CreateAccountState extends State<CreateAccount> {
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
                  height: 35,
                ),
                Text(
                  'Create Account',
                  style: TextStyle(
                      color: Color.fromRGBO(250, 107, 62, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 55,
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
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(
                        color: Color.fromRGBO(247, 163, 153, 1), fontSize: 20),
                    decoration: InputDecoration(
                        hintText: 'email',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 212, 195, 1),
                            fontSize: 20),
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
                        hintText: 'confirm password',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
