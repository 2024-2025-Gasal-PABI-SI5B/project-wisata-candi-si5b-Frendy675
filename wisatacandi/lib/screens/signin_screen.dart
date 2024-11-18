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
    return Scaffold(
    //TODO: 2. Pasang AppBar
    AppBar: AppBar(title: const Text('Sign In'),),
    //TODO: 3. Pasang body
    body: Center( 
      child: Form(
        child: Column(
          //TODO: 4. Atur mainAxisAlignment dan crossaxisalignment 
          mainAxisAlignment: MainAxisAlignment,
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
                  onPressed: (){},
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  ),
              ),
              obscureText: _obscurePassword,
            ),
            //TODO: 7. Pasanng elevatedButton sign in
          ],
      )),
    ),
    );
  } 
}
