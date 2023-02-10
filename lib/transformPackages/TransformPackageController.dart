import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;
class TransformPackageController extends GetxController{
  var package;

  Future getAllPackages()async{
    try {
      final response = await http.get(
        Uri.parse("https://www.learn2fitt.com/wp-json/wc/v3/products"),
        headers: {
          'Consumer-Key': 'ck_5562ac730818ca74df34e5ebf1e680b2163adac1',
          'Consumer-Secret': 'cs_7ea7fda99760434181909dd98fb0e783c6ec150e'
        },
      );

      if(response.statusCode == 200){
        package = json.decode(response.body.toString());

      }
    }
    catch(e){
      print(e);

    }
    return package;
  }
}