import 'dart:convert';

import 'package:grapmart_product_show/Models/Verify_phone_model.dart';
import 'package:grapmart_product_show/controllers/constants/Constants.dart';
import 'package:grapmart_product_show/controllers/key_word/Mykey.dart';
import 'package:http/http.dart' as http;

class Verify_Phone_api {
  static Future<VerifyPhone_model?> veify (String phone, String otp) async {

    var response = await http.post(Uri.parse(Myconstants.verify_phone),
        headers: <String, String>{
          'Content-Type': 'application/json',
          //"Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vYXBpLmdyYXBmb29kLmNvbS9hcGkvYXV0aC9sb2dpbiIsImlhdCI6MTY4MTE5OTcwNSwiZXhwIjoxNjgxMjg2MTA1LCJuYmYiOjE2ODExOTk3MDUsImp0aSI6IkZYRjNxMFdYbEIyczM4SlUiLCJzdWIiOiIxMiIsInBydiI6IjkzNTAxZTI3YTE3NmM4NWExMjQwMzIxYTg4MGM5NzhhNzhhN2JhMGMiLCJpZCI6MTIsIm5hbWUiOiJNZCBBbGFtaW4gUmFmaSIsInBob25lIjoiMDEzMjEwODE5ODEiLCJyb2xlIjoidXNlciJ9.9c0DLSJlmjDViR5k5kxTiKsWQdfulYaO1997djJljm4"
          //  ai token ta login ar sathe add korte hobe tai hoiye jabe


        },
        body: jsonEncode({
          MyKeyallWords.verifyPhone: phone,
          MyKeyallWords.verifyOtp: otp,
        }));
    if (response.statusCode ==200) {
      VerifyPhone_model verifyPhone_model =
      VerifyPhone_model.fromJson(jsonDecode(response.body));
      return verifyPhone_model;
    }
    print("error");
  }
}
