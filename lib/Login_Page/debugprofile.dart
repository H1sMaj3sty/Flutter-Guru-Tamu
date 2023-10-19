import 'package:flutter/material.dart';

class DebugEmail extends StatefulWidget {
  const DebugEmail({super.key});

  @override
  State<DebugEmail> createState() => _DebugEmailState();
}

class _DebugEmailState extends State<DebugEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.sailing),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ),
          ), //menampilkan textformfield
        ],
      ),
    );
  }
}
