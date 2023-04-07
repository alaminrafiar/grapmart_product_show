import 'package:flutter/material.dart';
import 'package:grapmart_product_show/Models/Login_model.dart';
import 'package:grapmart_product_show/controllers/constants/login_api.dart';

class Login_scren extends StatefulWidget {
  const Login_scren({Key? key}) : super(key: key);

  @override
  State<Login_scren> createState() => _Login_screnState();
}

class _Login_screnState extends State<Login_scren> {
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _password = TextEditingController();
  Login_model? login_model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
            controller: _password,
            decoration: InputDecoration(hintText: "ai khane number de"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: ()async {
            login_model =await MyService.mFetchUser(
            _phone.text,
                _password.text);
            setState(() {

            });
          }, child: Text("login")),
          SizedBox(height: 10,),
          login_model == null
              ? CircularProgressIndicator()
              : Text("message is : ${login_model!.message}"),
        ],
      ),
    );
  }
}
