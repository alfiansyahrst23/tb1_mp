import 'package:flutter/material.dart';
import 'package:tugas_besar_1/form_produk.dart';
import 'package:tugas_besar_1/page_produk.dart';


class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
              style: TextStyle(
              fontSize: 18.0, 
              fontWeight: FontWeight.bold, 
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              style: TextStyle(
              fontSize: 18.0, 
              fontWeight: FontWeight.bold, 
              ),
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: () {
                // Cek Login
                String username = usernameController.text;
                String password = passwordController.text;
                if (username == 'Alfiansyah Aresta' && password == '0030') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageProduct()),
                  );
                } else {
                  // Tampilkan Pesan Kesalahan Jika Login Gagal
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Login gagal. Coba lagi.'),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
