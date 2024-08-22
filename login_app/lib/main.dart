import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'), // arka plan resmi ekleme
            fit: BoxFit.cover, // resmi sığdırma
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(fontFamily: 'Poppins-Bold',
                    fontSize:20.0,
                    color: Colors.black45,
                  ),

                ),
              ),
              SizedBox(height: 18.0),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Password',
                  labelStyle: TextStyle(fontFamily: 'Poppins-Bold',
                    fontSize:20.0,
                    color: Colors.black45,
                  ), ),

              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {

                  String username = usernameController.text;
                  String password = passwordController.text;

                  if (username.isEmpty || password.isEmpty) {
                    Fluttertoast.showToast(msg: "Please fill empty fields!");
                  } else if (username == "Jhon Doe" && password == "12345678") {
                    Fluttertoast.showToast(msg: "Login Successful");
                  } else {
                    Fluttertoast.showToast(msg: "Your credentials are wrong!");
                  }
                },

                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.amber.shade200,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                child:Text('Login',
                  style: TextStyle(
                    fontFamily: 'Poppins-Bold',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

