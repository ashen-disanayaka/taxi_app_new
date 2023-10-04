import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/app_constant.dart';
import 'package:taxi_app/pages/otppage.dart';
import 'package:taxi_app/widgets/text_widget.dart';

Widget  Login_Widget(){

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text_Widget(text: AppConstant.hellonicetomeetyou),
        Text_Widget(text: AppConstant.getmovingwithgeentexi, fontSize: 24, fontWeight: FontWeight.w600),

       const SizedBox(height: 24,),
       Container(
         width: double.infinity,
         height: 65,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30),
           color: Colors.white,
         boxShadow: [
           BoxShadow(
             color: Colors.black.withOpacity(0.1),
             spreadRadius: 3,
             blurRadius: 10,

           )
         ]
         ),
         child: Row(
           children: [
             Expanded(
               flex:1,
               child: InkWell(
                 onTap: (){},
                 child: Container(
                   child: Row(
                     children: [
                       Expanded(
                         child: Container(
                           // child: countryCode.flagImage(),
                          ),
                       ),

                       Text_Widget(text: '+94'),
                       // const SizedBox(width: 15,),
                       const Icon(Icons.keyboard_arrow_down_outlined),
                     ],
                   ),
                 ),
               ),
             ),
             Container(
               height: 50,
               width: 1,
               color: Colors.black.withOpacity(0.1),
             ),
             Expanded(
               flex:3,
               child: Container(
                 padding: EdgeInsets.symmetric(horizontal: 10),
                 child: TextField(
                   onTap: (){

                   },
                   decoration: InputDecoration(
                     hintStyle: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.normal),
                     hintText: AppConstant.enteryourmobilenumber,
                     border: InputBorder.none
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: InkWell(
                 onTap: (){
                   Get.to(()=> const OTPpage());
                 },
                 child: Container(
                   width: 40,
                   height: 40,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.yellow,
                   ),
                   child: Icon(Icons.arrow_forward_ios, size: 20,),
                 ),
               ),

             ),
           ],
         ),
       ),
        SizedBox(height: 30,),
        RichText(
          textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 13),
              children: [
                TextSpan(
                  text: AppConstant.bycreating + ' ',
                ),
                TextSpan(
                  text: AppConstant.terms + ' ',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold)
                ),
                TextSpan(
                  text: 'and ',
                ),
                TextSpan(
                    text: AppConstant.privacy,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)
                ),
              ]
            )),

      ],
    ),
  );
}