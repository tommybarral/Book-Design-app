import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const routeName = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Here to Get \nWelcomed !', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.indigo[900]),),
              Form(
                onChanged: () {},
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        label: Text('Email'),
                        hintText: 'Enter your email',
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        label: Text('Password'),
                        hintText: 'Enter your password',
                      ),
                    ),
                  ]
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Sign in', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.indigo[900]),),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.indigo[900],
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward, size: 32,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue[900],
                            //decoration: TextDecoration.underline,
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 57,
                        margin: const EdgeInsets.only(top: 5),
                        color: Colors.indigo[900],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                          'Forgot Password',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue[900],
                              //decoration: TextDecoration.underline
                          ),
                      ),
                      Container(
                        height: 1,
                        width: 135,
                        margin: const EdgeInsets.only(top: 5),
                        color: Colors.indigo[900],
                      ),
                    ],
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
