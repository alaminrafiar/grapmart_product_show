import 'package:flutter/material.dart';
import 'package:grapmart_product_show/Models/singin_model.dart';
import 'package:grapmart_product_show/controllers/constants/SinIn_api.dart';

class Singin_screen extends StatefulWidget {
  const Singin_screen({Key? key}) : super(key: key);

  @override
  State<Singin_screen> createState() => _Singin_screenState();
}

class _Singin_screenState extends State<Singin_screen> {
  final TextEditingController _name =TextEditingController();
  final TextEditingController _phone =TextEditingController();
  final TextEditingController _password =TextEditingController();
  Auth_model_SIngin? auth_model_sIngin;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _name,
              decoration: InputDecoration(
                hintText: "name ",

              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: _phone,
              decoration: InputDecoration(
                hintText: "phone",
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: _password,
              decoration:  InputDecoration(
                hintText: "password"
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                //Navigator.push(context, MaterialPageRoute(builder: (c)=> const Attendance()));
                 auth_model_sIngin= await SinginAPi.mFetchUser(
                  _name.text,
                  _phone.text,
                   _password.text
                );
                setState(() {});
              },
              child: const Text("Login"),
            ),
            SizedBox(
              height: 20,
            ),
            auth_model_sIngin == null
                ? CircularProgressIndicator()
                : Text("message is : ${auth_model_sIngin!.errors}"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),

    );
  }
}
