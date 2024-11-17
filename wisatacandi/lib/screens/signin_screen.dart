import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget{
  const SigninScreen({super.key});
  
  //TODO: 1. Deklarasikan variabel yang dibutuhkan
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //Texteditingcontroller = textbox

  String _errorText = '';
  bool _isSignIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
    //TODO: 2. Pasang AppBar
    AppBar: AppBar(title: Text('Sign In'),),
    //TODO: 3. Pasang body
    body: Center(),
  } 
}
