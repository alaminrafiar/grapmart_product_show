import 'package:flutter/material.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController _oldPass = TextEditingController();
  TextEditingController _newPass = TextEditingController();
  TextEditingController _re_new_pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("hasem dadu"),
        leading:const Text("tai naki"),
      ),
      body: Column(
        children: [
          TextField(
            controller:_oldPass ,
            decoration: InputDecoration(
              hintText: "age pasword de",
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller:_newPass ,
            decoration: InputDecoration(
              hintText: "age pasword de",
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller:_newPass ,
            decoration: InputDecoration(
              hintText: "age pasword de",
            ),
          ),
        ],
      ),
    );
  }
}
