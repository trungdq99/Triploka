import 'package:flutter/material.dart';
import 'package:triploka/screens/Register_screen.dart';
import 'package:triploka/screens/WelcomeScreen.dart';
import 'package:triploka/utils/Utils.dart';

class LoginScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              //Triploka logo
              Image.asset(
                'assets/images/Triploka.png',
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              //Text field for input email or phone number
              AccentColorOverride(
                color: Colors.teal,
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    labelText: 'Email hoặc số di động',
                  ),
                ),
              ),
              //Text field for input password
              AccentColorOverride(
                color: Colors.teal,
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Mật khẩu',
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Log in button
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                },
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              //Forgot password button
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Bạn quên mật khẩu?',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.teal.shade900,
                  ),
                ),
              ),
              Divider(
                color: Colors.teal.shade800,
                height: 50.0,
                thickness: 2.0,
              ),
              Center(
                child: Text(
                  'Hoặc đăng nhập với',
                  style: TextStyle(
                    //decoration: TextDecoration.underline,
                    fontSize: 15.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //Other way to login
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Login with Google
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/google_icon.png',
                            width: 20.0,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Google',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  //Login with Facebook
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue.shade800,
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/facebook_icon.jpg',
                            width: 20.0,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Bạn chưa có tài khoản Triploka?',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text(
                      'Đăng ký ngay',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
