import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttergurutamu/Login_Page/home.dart';
import 'package:fluttergurutamu/Login_Page/login.dart';
import 'package:fluttergurutamu/Login_Page/profile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  String qresult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("$qresult"),
          ElevatedButton(
            onPressed: () async {
              var res = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SimpleBarcodeScannerPage(),
                ),
              );
              if (res is String) {
                setState(() {
                  qresult = res;
                });
                Fluttertoast.showToast(
                  msg: "Hasil Scan: $res",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              }
            },
            child: Text("Scan QR"),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                      size: 64.0,
                    ),
                    Text(
                      "QR SCANNER",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            menu("QR Scan", Icons.qr_code, ProfilePage()),
            menu("My Profile", Icons.person, LoginPage()),
            menu("About App", Icons.info, HomePage()),
          ],
        ),
      ),
    );
  }

  Widget menu(String menu, IconData icon, Widget target) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> target)
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(icon),
                SizedBox(width: 8.0),
                Text(menu),
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }



// Widget menu(String menu, IconData icon) {
//   return Column(
//     children: [
//       GestureDetector(
//         onTap: () {
//           // Tindakan saat item menu diklik
//           Navigator.pop(context); // Tutup drawer setelah item menu diklik
//           // Anda dapat menambahkan tindakan tambahan di sini
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Icon(icon),
//               SizedBox(width: 8.0),
//               Text(menu),
//             ],
//           ),
//         ),
//       ),
//       Divider(), // Divider untuk garis bawah antara item menu
//     ],
//   );
// }

}
