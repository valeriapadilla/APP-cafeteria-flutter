import 'package:clima/BarMenu.dart';
import 'package:clima/BodyMenu.dart';
import 'package:clima/feed_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Icon(
                  Icons.bakery_dining,
                  size: 120,
                  color: Color.fromARGB(255, 174, 110, 21),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'SWEET BAKERY',
                  style: TextStyle(
                      fontFamily: 'DynaPuff',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(height: 10),
                Text(
                  'Panaderia gourmet con amor y dulzura',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                //usuario
                SizedBox(height: 50),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'User',
                          ),
                        ),
                      ),
                    )),
                //password
                SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    )),
                SizedBox(height: 20.0),

                //sign button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 219, 139, 81),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Scaffold(
                        appBar: AppBar(
                          elevation: 0,
                          centerTitle: true,
                          title: (Text('MENU BAKERY')),
                        ),
                        body: FeedMenu(),
                      );
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Scaffold(
                                    appBar: AppBar(
                                      elevation: 0,
                                      centerTitle: true,
                                      title: (Text('MENU BAKERY')),
                                    ),
                                    body: FeedMenu(),
                                  )));
                    },
                  ),
                ),
                //not a member?
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    '¿No tienes cuenta?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Registrate',
                    style: TextStyle(
                      color: Color.fromARGB(255, 194, 147, 27),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ])
              ])),
        ));
  }
}
