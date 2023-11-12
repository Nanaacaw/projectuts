import 'package:flutter/material.dart';
import 'package:projectuts/components/button_signup.dart';
import 'package:projectuts/components/textfield_login.dart';

class MyRegister extends StatelessWidget {
  MyRegister({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserUp() {}

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
              Icon(
                Icons.lock,
                size: 75,
              ),

              const SizedBox(
                height: 20,
              ),

              // text Hi, buddy !
              Text(
                'Lets create your account for better experience.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // textfield username
              MyTextField(
                controller: usernameController, // for control username
                hintText: 'Email', // like placeholder
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
                height: 20,
              ),

              // textfield pw
              MyTextField(
                controller: passwordController, // for control password
                hintText: 'Confirm Password', // like placeholder
                obscureText: true, // if true = hiding the password
              ),

              const SizedBox(
                height: 20,
              ),

              // sign up button
              MyButtonSignUp(
                onTap: signUserUp,
              ),

              const SizedBox(
                height: 35,
              ),

              // not a member? register now.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Login now',
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
