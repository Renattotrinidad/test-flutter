import 'package:flutter/material.dart';
import 'package:prueba_ima/pages/home/home.dart';
import 'package:prueba_ima/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * .1, vertical: 10.0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'register'),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * .08),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: size.width * .7,
                    height: size.width * .7,
                    child: Image.asset('assets/login_image.png'),
                  ),
                  SizedBox(height: size.height * .05),
                  const TextFieldWidget(placeholder: 'Username'),
                  SizedBox(height: size.height * .03),
                  const TextFieldWidget(
                    placeholder: 'Password',
                    obscureText: true,
                  ),
                  SizedBox(height: size.height * .03),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const HomePage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return child;
                          },
                        ),
                      );
                    },
                    child: const ButtonWidget(text: 'Login'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
