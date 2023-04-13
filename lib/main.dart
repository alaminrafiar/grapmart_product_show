import 'package:flutter/material.dart';
import 'package:grapmart_product_show/pages/Resent_verify_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:  Resent_verify(),
    );
  }
}

// ai porjonto ja ja hoise amr ak
// 1 login
//2 product
//3/registation
//4 profile
// 5/change_password
// 6/ Resent verify
