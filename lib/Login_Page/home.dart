import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200, //color bawaan material
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Aplikasi QR Code"),
          Text("Aplikasi QR Code"),
          Text("Aplikasi QR Code"),
          Text("Aplikasi QR Code"),
          Text("Aplikasi QR Code"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Masukkan Pesan",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Simpan",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Simpan",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}