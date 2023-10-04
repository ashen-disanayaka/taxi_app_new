
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/widgets/login_widgets.dart';
import 'package:taxi_app/widgets/orangeWidget.dart';

class LogingPage extends StatelessWidget {
  const LogingPage({Key? key}) : super(key: key);

  // final countryPicker = const  FlCountryCodePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrangeWidget(),

              Login_Widget(),
            ],
          ),
        ),
      ),
    );
  }
}
