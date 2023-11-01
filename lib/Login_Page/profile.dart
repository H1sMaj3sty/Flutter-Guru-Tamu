import 'package:flutter/material.dart';
import 'package:fluttergurutamu/Login_Page/drawer_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Text("My Profile", style: TextStyle(color: Colors.white),),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 64,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama    : " ),
                        Text("Nomor HP    : " ),
                        Text("Email    : " ),
                        Text("Alamat    : " ),
                        Text("Cita-Cita    : " ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Riwayat Pendidikan", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Sekolah Dasar",style: TextStyle(color: Colors.grey)),
                        Text("SD Banjarmasin", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Tahun 2000 - 2013", style: TextStyle(color: Colors.grey)),
                        Divider(thickness: 7),
                        Text("Sekolah Menengah Pertama",style: TextStyle(color: Colors.grey)),
                        Text("SMP Banjarmasin", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Tahun 2002 - 2013", style: TextStyle(color: Colors.grey)),
                        // Container(
                        //   color: Colors.grey,
                        //   width: MediaQuery.of(context).size.width,height: 1,
                        // ),
                        Text("Sekolah Menegah Atas",style: TextStyle(color: Colors.grey)),
                        Text("SD Banjarmasin", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Tahun 2003 - 2013", style: TextStyle(color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }

  Padding formEmail({required String hint, required IconData icon}) {
    bool pwd = hint == "Password";
    return Padding(
                padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,20),
                child: Container( // Kontainer untuk mengubah width
                  width: 550, // Mengubah width
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: hint,
                        labelText: hint,
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        helperText: hint + " Tidak Boleh Kosong",
                        enabledBorder: OutlineInputBorder( // Atur warna outline border
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue), // Atur warna yang Anda inginkan
                          borderRadius: BorderRadius.circular(45.0), // Ubah nilai radius sesuai keinginan Anda
                        ),
                        prefixIcon: Icon(icon),
                        suffixIcon: Icon(Icons.chevron_right),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0), // Ubah nilai radius sesuai keinginan Anda
                            borderSide: BorderSide(width: 1, color: Colors.black))
                    ),
                    obscureText: pwd,
                  ),
                ),
              );
  }
}

// return Scaffold(
//   body: Column(
//     children: [
//       Expanded(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(8.0,8,8, 25),
//                   child: FlutterLogo(size: 60),
//                 ), Padding(
//                   padding: const EdgeInsets.fromLTRB(8.0,8,8, 25),
//                   child: Text("Flutter Latihan", style: TextStyle(fontSize: 50),),
//                 ),
//               ],
//             ),
//             formEmail(hint: "Nama", icon: Icons.person),
//             formEmail(hint: "Nomor HP",  icon: Icons.person),
//             formEmail(hint: "Email", icon: Icons.person),
//             formEmail(hint: "Password", icon: Icons.person),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(8,15,8,8),
//                   child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(context,
//                         MaterialPageRoute(builder: (context)=>DrawerPage()));
//                         Fluttertoast.showToast(
//                             msg: "Halo Dunia",
//                             toastLength: Toast.LENGTH_SHORT,
//                             gravity: ToastGravity.BOTTOM,
//                             timeInSecForIosWeb: 1,
//                             backgroundColor: Colors.blue,
//                             textColor: Colors.white,
//                             fontSize: 16.0
//                         );
//                       },
//                       child: Text("Sign Up", style: TextStyle(color: Colors.white)),
//                       style:
//                       ElevatedButton.styleFrom(backgroundColor: Colors.blue)),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8,8,8,8),
//               child: Text("Forgot Password", style: TextStyle(color: Colors.blue, fontSize: 10),),
//             ),
//           ],
//         ),
//       ),
//       Text("Belum Punya Akun ? Daftar")
//     ],
//   ),
// );
