import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SigninScreen extends StatefulWidget{
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  //Texteditingcontroller = textbox
  String _errorText = '';

  bool _isSignIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //TODO: 2. Pasang AppBar
    appBar: AppBar(
      title: const Text('Sign In'),
      ),
    //TODO: 3. Pasang body
    body: Center( 
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              //TODO: 4. Atur mainAxisAlignment dan crossaxisalignment 
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //TODO: 5. Pasang textformfield nama pengguna
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Nama Pengguna',
                    hintText: 'Masukkan nama pengguna',
                    border: OutlineInputBorder(),
                  ),
                ),
                //TODO: 6. Pasang Textformfield kata sandi
                const SizedBox(height: 20,),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi',
                    hintText: 'Masukkan kata sandi',
                    border: const OutlineInputBorder(),
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    ),
                    obscureText: _obscurePassword,
                  ),
                //TODO: 7. Pasanng elevatedButton sign in
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {}, 
                  child: const  Text('Sign In'),
                  ),
                //TODO 8. Pasang TextButton untuk sign up
                const SizedBox(height: 10,),
                // TextButton(
                //   onPressed: () {}, 
                //   child: Text('Belum punya akun? Daftar di sini.'),
                //   ),
                RichText(
                  text: TextSpan(
                    text: 'Belum Punya Akun? ',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.deepPurple),
                      children: [
                        TextSpan(
                          text: 'Daftar Di Sini.',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){},
                        ),
                      ],
                    ), 
                  ),
              ],
          )),
        ),
      ),
    ),
    );
  } 
}
