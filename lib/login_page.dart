import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Page'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/KSU-logo.jpg',
                height: 280,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    labelText: 'abc@email.com',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                    labelText: 'Your password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 3, minimumSize: Size(double.infinity, 50)),
                onPressed: () {
                  _login();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SIGN IN",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: false,
                          onChanged: (value) => print("Remember Me")),
                      Text("Remember Me"),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle "Forgot Password" action
                      print("Forgot Password");
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.blue,
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

  void _login() {
    // For simplicity, check hardcoded credentials.
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == 'admin' && password == 'password') {
      // Navigate to the home screen or perform any action on successful login.
      print('Login successful');
    } else {
      // Display an error message or perform any action on failed login.
      print('Login failed');
    }
  }
}
