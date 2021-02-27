import 'package:flutter/material.dart';
import 'package:agpaii_kta/home.dart';
import 'package:get/get.dart';
import 'package:agpaii_kta/createaccount.dart';
import 'package:agpaii_kta/login.dart';
import 'package:agpaii_kta/fitur.dart';
import 'package:agpaii_kta/profil.dart';
import 'package:agpaii_kta/detailposting.dart';
import 'package:agpaii_kta/posting.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => AgpaiiKta()),
      GetPage(name: "/login", page: () => LoginPage()),
      GetPage(
          name: '/createaccount',
          page: () => CreateAccount(),
          transition: Transition.zoom),
      GetPage(name: '/fitur', page: () => Fitur(), transition: Transition.zoom),
      GetPage(
          name: '/posting',
          page: () => Posting(),
          transition: Transition.fadeIn),
      GetPage(name: '/profil', page: () => Profil()),
      GetPage(name: '/profil/lihatposting', page: () => Postingdetail()),
    ],
  ));
}

class AgpaiiKta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,

        // Define the default font family.
        fontFamily: 'Montserrat',
      ),
      home: Home(),
    );
  }
}
