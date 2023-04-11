import 'package:flutter/material.dart';
import 'package:grapmart_product_show/pages/change_password_screen.dart';
import 'package:grapmart_product_show/pages/login_screen.dart';
import 'package:grapmart_product_show/pages/product.dart';

import 'package:grapmart_product_show/pages/singin_page.dart';

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

      home:  ChangePassword(),
    );
  }
}

// ai porjonto ja ja hoise amr ak
// 1 login
//2 product
//3registation
//4 profile
