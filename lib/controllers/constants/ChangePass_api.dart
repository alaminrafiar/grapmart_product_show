import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:grapmart_product_show/Models/Auth_model_ChangePass.dart';
import 'package:grapmart_product_show/controllers/constants/Constants.dart';
import 'package:grapmart_product_show/controllers/key_word/MyKey_changePassword.dart';
import 'package:grapmart_product_show/controllers/key_word/MyKey_login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ChangePassApi {
  static Future<Auth_model_changePass?> mstore(String oldpass, String newpass) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
     String? mytoken = sharedPreferences.getString(MyKeyLogin.access_token);

    var response = await http.post(Uri.parse(Myconstants.changePassUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
          "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vYXBpLmdyYXBmb29kLmNvbS9hcGkvYXV0aC9sb2dpbiIsImlhdCI6MTY4MTE5OTcwNSwiZXhwIjoxNjgxMjg2MTA1LCJuYmYiOjE2ODExOTk3MDUsImp0aSI6IkZYRjNxMFdYbEIyczM4SlUiLCJzdWIiOiIxMiIsInBydiI6IjkzNTAxZTI3YTE3NmM4NWExMjQwMzIxYTg4MGM5NzhhNzhhN2JhMGMiLCJpZCI6MTIsIm5hbWUiOiJNZCBBbGFtaW4gUmFmaSIsInBob25lIjoiMDEzMjEwODE5ODEiLCJyb2xlIjoidXNlciJ9.9c0DLSJlmjDViR5k5kxTiKsWQdfulYaO1997djJljm4"
        //  ai token ta login ar sathe add korte hobe tai hoiye jabe


        },
        body: jsonEncode({
          MyKeyChangsePass.oldPassword: oldpass,
          MyKeyChangsePass.newPassword: newpass,
        }));
    if (response.statusCode ==200) {
      Auth_model_changePass auth_model_changePass =
          Auth_model_changePass.fromJson(jsonDecode(response.body));
        return auth_model_changePass;
    }
    print("error");
  }
}
