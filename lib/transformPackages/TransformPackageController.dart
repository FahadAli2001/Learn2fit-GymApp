import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:woocommerce_api/woocommerce_api.dart';
class TransformPackageController extends GetxController{

  var DietPlan = ["Diet Plan for 1 month with multi meal options (Based on your preferences)",
  "Diet plan based on your initial assessment and target weight loss / weight gain",
  "Your diet plan can be of below categories based on your likes (Coach will give you full guidance)",
  "Low, Moderate & High Carb Diet",
  "Low Carb Diet",
  "Zone Diet",
  "Keto Diet",
  "Intermittent Fasting Diet Plan",
 ];

  var Nutrition = [
    "3 one to one (1-1) Nutrition & Fitness Education Session – 15 min each, clearing your all concepts about Weight loss/Gain Process",
    "Course Covers Guidance for - Principle of weight loss or gain - How our body reduce or gain weight",
    "Facts and guidance about Protein, Carbohydrates, Fats, Fiber, Water, Minerals",
    "Supplement – when and which supplements are required",
    "Guidance to make your diet plan",
    "Guidance for Exercises",
    "Key Outcome: The knowledgeable course that can change your way of life and gradually you can achieve your body transformation goal",

  ];

  var twoMonths = [
    "3 one to one (1-1) Fitness Education Session – 15 min each, clearing your all concepts about Weight loss/gain Process",
    "Personalized Nutrition & Diet Plan (with multi meal options based on your likes)",
    "Home & Gym Base Training Program (real videos with info graphic guidance)",
    "Weekly Calls with coach: For progress monitoring and adjustments in plan",
    "Continuous Support for any query (Your Coach is just a phone call or message away)",
    "Key Outcome: By the end of this program, you will not only transform your body but also you will be Fitness and Diet Expert and can make your daily diet plans yourself and your family",

  ];
  var package;

  Future getAllPackages()async{
    try {
      /*final response = await http.get(
        Uri.parse("https://www.learn2fitt.com/wp-json/wc/v3/products"),
          headers: {
            'Authorization': 'Bearer ck_5562ac730818ca74df34e5ebf1e680b2163adac1:cs_7ea7fda99760434181909dd98fb0e783c6ec150e'
          }
        /*headers: {
          'Consumer-Key': 'ck_5562ac730818ca74df34e5ebf1e680b2163adac1',
          'Consumer-Secret': 'cs_7ea7fda99760434181909dd98fb0e783c6ec150e'
        },*/
      );*/
      WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
          url: "https://www.learn2fitt.com",
          consumerKey: "ck_5562ac730818ca74df34e5ebf1e680b2163adac1",
          consumerSecret: "cs_7ea7fda99760434181909dd98fb0e783c6ec150e");
      package = await wooCommerceAPI.getAsync("products");



    /*  if(response.statusCode == 200){
        package = json.decode(response.body.toString());
        print(package);
      }else{
        //print(response.statusCode.toString());
      }*/
    }
    catch(e){
      print(e);

    }
    return package;
  }
}