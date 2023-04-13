import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grapmart_product_show/Models/Auth_model_ChangePass.dart';
import 'package:grapmart_product_show/controllers/constants/ChangePass_api.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _oldPass = TextEditingController();
  final TextEditingController _newPass = TextEditingController();
  Auth_model_changePass? auth_model_changePass;
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("hasem dadu")),
        leading: const Text("tai naki"),
        actions: const [Text("bablo ")],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _oldPass,
              decoration: const InputDecoration(
                hintText: "ager password de",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _newPass,
              decoration: const InputDecoration(
                hintText: "notun password de ",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () async {
                  Fluttertoast.showToast(
                      msg: "This is a Toast message",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      textColor: Colors.white,
                      fontSize: 16.0);
                  auth_model_changePass = await ChangePassApi.mstore(
                    _oldPass.text,
                    _newPass.text,
                  );
                  setState(() {
                    Fluttertoast.showToast(
                        msg: "This is a Toast message",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  });
                },
                child: const Text("Change_password")),
          ],
        ),
      ),
    );
  }
}
