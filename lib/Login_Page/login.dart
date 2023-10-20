import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String qresult = "";
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
                        onPressed: () async {
                          var res = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                    const SimpleBarcodeScannerPage()));
                          if (res is String) {
                            log("tes : $res");
                            setState(() {
                              qresult = res;
                            });
                          }
                          Fluttertoast.showToast(
                              msg: "Hasil Scan: $res",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blue,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                          },
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