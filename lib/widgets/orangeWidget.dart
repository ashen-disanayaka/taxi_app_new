import 'package:get/get.dart';
import 'package:flutter/material.dart';


Widget OrangeWidget(){
 return Container(
  width: Get.width,
  decoration: BoxDecoration(
   image: DecorationImage(
    image: AssetImage('assets/page01_bg.png'),
    fit: BoxFit.cover,

   )
  ),
  height: Get.height*0.6,
 );

}
