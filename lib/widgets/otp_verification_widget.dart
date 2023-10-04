import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/app_constant.dart';
import 'package:taxi_app/widgets/text_widget.dart';

Widget OTP_verification_widget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text_Widget(text: AppConstant.phoneveri),
        Text_Widget(
            text: AppConstant.enteryourmobilenumber,
            fontSize: 24,
            fontWeight: FontWeight.w600),
        const SizedBox(
          height: 24,
        ),
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
              ]),

        ),
        SizedBox(
          height: 30,
        ),
        RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 13),
                children: [
                  TextSpan(
                    text: AppConstant.resendcode + ' ',
                  ),
                  TextSpan(
                      text: '10 ' + AppConstant.seconds,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                ])),
      ],
    ),
  );
}
