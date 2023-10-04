import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Text_Widget({required String text, double fontSize =12, FontWeight fontWeight= FontWeight.w400}){
  return Text(
 text, style: GoogleFonts.poppins(fontSize: fontSize, fontWeight: fontWeight),
  );
}