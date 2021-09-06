import 'package:flutter/material.dart';
import 'package:login_app/views/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  late SharedPreferences loginData;
  late bool newUser;

  final _globalKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  @override
  void dispose() {
    super.dispose();
    usernameCtrl.dispose();
    passCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/login_avatar.png',
              width: 150.0,
              height: 150.0,
            ),
            SizedBox(
              height: 28.0,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Form(
                    key: _globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: usernameCtrl,
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.alternate_email,
                              color: Colors.blue,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter an username";
                            }
                            if (value.startsWith(" ")) {
                              return "Username should not contain whitespaces";
                            }
                            if (value != 'sabari') {
                              return "Please enter correct username";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: passCtrl,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.blue,
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            if (value != '123456') {
                              return 'Please enter correct password';
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String username = usernameCtrl.text;
                      if (_globalKey.currentState!.validate()) {
                        print("Logged in successfully");
                        loginData.setBool('login', false);
                        loginData.setString('username', username);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }
                    },
                    child: Text("Login"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkLoginStatus() async {
    loginData = await SharedPreferences.getInstance();
    newUser = (loginData.getBool('login') ?? true);
    print("User logged in: $newUser");
    if (newUser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
