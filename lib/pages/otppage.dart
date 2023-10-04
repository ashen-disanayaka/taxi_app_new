import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/widgets/orangeWidget.dart';
import 'package:taxi_app/widgets/otp_verification_widget.dart';

class OTPpage extends StatefulWidget {
  const OTPpage({Key? key}) : super(key: key);

  @override
  _OTPpageState createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Stack(
              children: [
            OrangeWidget(),
                Positioned(
                  top: 180,
                  left: 30,
                  child: InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.arrow_back_outlined, color: Colors.grey, size: 24,),
                    ),
                  ),
                ),
          ]
          ),
          SizedBox(
            height: 20,
          ),
          OTP_verification_widget(),
        ],
      ),
    );
  }
}
