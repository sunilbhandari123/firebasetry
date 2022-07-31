import 'package:firestora/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Center(child: Text('Sign In')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FlatButton(
              onPressed: () async {
               dynamic result =await _auth.signInAnon();
               if(result==null){
                  print('Error sigining in');
                }
                else{
                  print('Signed in');
                  print (result);
               }
              },
              child: const Text('Sign In'),
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
