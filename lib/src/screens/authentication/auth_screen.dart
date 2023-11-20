import 'package:flutter/material.dart';
import 'package:kts/src/router/router.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int authType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                  width: 250, child: Image.asset('assets/images/logo.png')),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        authType = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: authType == 0
                            ? const Color(0xFFF87F5B)
                            : Colors.white,
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 25,
                          color: authType == 0
                              ? Colors.white
                              : const Color(0xFFF87F5B),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 1,
                    height: 20,
                    color: const Color(0xFFF87F5B),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        authType = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: authType == 1
                            ? const Color(0xFFF87F5B)
                            : Colors.white,
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 25,
                          color: authType == 1
                              ? Colors.white
                              : const Color(0xFFF87F5B),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              authType == 0
                  ? Form(
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              labelText: "Email",
                              // hintText: 'FirstName LastName',
                              labelStyle: TextStyle(
                                color: Color(0xFFF87F5B),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              labelText: "Password",
                              // hintText: 'FirstName LastName',
                              labelStyle: TextStyle(
                                color: Color(0xFFF87F5B),
                                fontSize: 15,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Color(0xFFF87F5B),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Color(0xFFF87F5B),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  authType = 1;
                                });
                              },
                              child: const Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 50),
                              backgroundColor: const Color(0xFFF87F5B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0)),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 15,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, AppRouter.homeRoute);
                            },
                            child: const Text('Sign in'),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'By signing in, you agree to our Terms of Service and Privacy Policy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF87F5B),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Form(
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              labelText: "Name",
                              // hintText: 'FirstName LastName',
                              labelStyle: TextStyle(
                                color: Color(0xFFF87F5B),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              labelText: "Email",
                              // hintText: 'FirstName LastName',
                              labelStyle: TextStyle(
                                color: Color(0xFFF87F5B),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Create Password',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFF87F5B),
                              ),
                            ),
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              labelText: "Enter Password",
                              // hintText: 'FirstName LastName',
                              labelStyle: TextStyle(
                                color: Color(0xFFF87F5B),
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Color(0xFFF87F5B),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFF87F5B),
                                ),
                              ),
                              labelText: "Confirm Password",
                              // hintText: 'FirstName LastName',
                              labelStyle: TextStyle(
                                color: Color(0xFFF87F5B),
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Color(0xFFF87F5B),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 50),
                              backgroundColor: const Color(0xFFF87F5B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0)),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 15,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                authType = 0;
                              });
                              // Navigator.pushNamed(context, AppRouter.homeRoute);
                            },
                            child: const Text('Create Account'),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'By signing in, you agree to our Terms of Service and Privacy Policy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF87F5B),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
