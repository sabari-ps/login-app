import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/views/login_page.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login app",
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: Colors.blue
      ),
      home: LoginPage(),
    );
  }
}
