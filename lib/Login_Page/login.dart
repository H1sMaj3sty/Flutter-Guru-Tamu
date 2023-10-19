import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700, //color bawaan material desain
        title: Text(
          "Login Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
      Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterLogo(size: 60), Text("Flutter", style: TextStyle(fontSize: 50),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black))),
                  ),
                ), //menampilkan textformfield
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black))),
                  ),
                ),
                Text("Forgot Password", style: TextStyle(color: Colors.blue, fontSize: 10),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text("Login", style: TextStyle(color: Colors.white)),
                        style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue)),
                  ],
                ),
              ],
            ),
          ),
          Text("Belum Punya Akun ? Daftar")
        ],
      ),
    );
  }
}