import 'package:flutter/material.dart';
import 'package:grapmart_product_show/Models/Login_model.dart';
import 'package:grapmart_product_show/Models/Verify_phone_model.dart';
import 'package:grapmart_product_show/controllers/constants/Verify_Phone.dart';
import 'package:grapmart_product_show/controllers/constants/login_api.dart';

class Verify_phone_screen extends StatefulWidget {
  const Verify_phone_screen({Key? key}) : super(key: key);

  @override
  State<Verify_phone_screen> createState() => _Login_screnState();
}

class _Login_screnState extends State<Verify_phone_screen> {
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _otp = TextEditingController();
  VerifyPhone_model? verifyPhone_model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Verify Phone Number"),
          SizedBox(height: 20,),
          TextField(
            controller: _phone,
            decoration: InputDecoration(
              hintText: "phone number de ",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _otp,
            decoration: InputDecoration(hintText: "phone j otp gese oita de"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                verifyPhone_model =
                    await Verify_Phone_api.veify(_phone.text, _otp.text);
                setState(() {});
              },
              child: Text("login")),
          SizedBox(
            height: 10,
          ),
          verifyPhone_model == null
              ? CircularProgressIndicator()
              : Text("message is : ${verifyPhone_model!.message}"),
        ],
      ),
    );
  }
}
