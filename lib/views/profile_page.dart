import 'package:flutter/material.dart';
import 'package:login_app/views/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late SharedPreferences loginData;
  late String username = "";

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      "https://media-exp1.licdn.com/dms/image/C5603AQExGd-PTXLEYQ/profile-displayphoto-shrink_400_400/0/1628072203245?e=1636588800&v=beta&t=JkNtLHr2vwZ9mxUpdP7qiWoxG8oZWNyhWchGi4sN8Hw",
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Username: ",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        username,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      loginData.setBool('login', true);
                      Navigator.pushReplacement(context,
                          new MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    icon: Icon(Icons.logout),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
