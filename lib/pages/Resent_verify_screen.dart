import 'package:flutter/material.dart';
import 'package:grapmart_product_show/Models/Resent_Verify_model.dart';
import 'package:grapmart_product_show/controllers/constants/Resent_verify_api.dart';

class Resent_verify extends StatefulWidget {
  const Resent_verify({Key? key}) : super(key: key);

  @override
  State<Resent_verify> createState() => _Resent_verifyState();
}

class _Resent_verifyState extends State<Resent_verify> {
  final TextEditingController _phone = TextEditingController();
 Reset_Verify_model ? reset_verify_model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("Resent verify screen ")),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _phone,
              decoration: const InputDecoration(hintText: "number de"),
            ),
          ),
          ElevatedButton(onPressed: () async {
            reset_verify_model =await Resent_verify_api.method(
              _phone.text,
            );
            setState(() {

            });
          }, child: Text("Resent")),
          SizedBox(height: 20,),
          reset_verify_model ==null
          ?CircularProgressIndicator()
              :Text("message is :${reset_verify_model!.message}"),
        ],
      ),
    );
  }
}
