import 'package:flutter/material.dart';
import 'package:projectuts/components/button_login.dart';
import 'package:projectuts/components/squareTile_login.dart';
import 'package:projectuts/components/textfield_login.dart';
// import 'package:projectuts/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        //safearea berfungsi supaya widget tidak bentrok dengan notch HP
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset(
                'lib/images/logo.png',
                height: 200,
                width: 200,
              ),

              const SizedBox(
                height: 20,
              ),

              // text Hi, buddy !
              Text(
                'Hello buddy, welcome back!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // textfield username
              MyTextField(
                controller: usernameController, // for control username
                hintText: 'Username', // like placeholder
                obscureText: false,
              ),

              const SizedBox(
                height: 20,
              ),

              // textfield pw
              MyTextField(
                controller: passwordController, // for control password
                hintText: 'Password', // like placeholder
                obscureText: true, // if true = hiding the password
              ),

              const SizedBox(
                height: 10,
              ),

              // forgot pw
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(
                height: 35,
              ),

              // continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // button sign in with google or facebook
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google logo
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(
                    width: 10,
                  ),

                  // fb logo
                  SquareTile(imagePath: 'lib/images/fb.png'),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              // not a member? register now.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
