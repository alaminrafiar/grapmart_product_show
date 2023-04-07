import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:grapmart_product_show/Models/Product_model.dart';
import 'package:http/http.dart' as http;

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Future<ProductModel> getProductsApi() async {
    final response =
        await http.get(Uri.parse("http://api.grapfood.com/api/product?page=3"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductModel.fromJson(data);
    } else {
      return ProductModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("product Show"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<ProductModel>(
              future: getProductsApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height:MediaQuery.of(context).size.height *.3,
                      width:MediaQuery.of(context).size.width *.1,
                            child: ListView.builder(
                                //itemCount: snapshot.data!.data![index].image!.length,

                                    itemBuilder: (context, position) {

                              return Container(
                                height:MediaQuery.of(context).size.height *.25,
                                width:MediaQuery.of(context).size.width *.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(snapshot.data!.data![index].image![position]..toString())
                                  )
                                ),
                              );
                            }),
                          ),
                          // Text(index.toString()),
                        ],
                      );
                    },
                  );
                } else {
                  return Text("Loading");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Mediaquery {
}
