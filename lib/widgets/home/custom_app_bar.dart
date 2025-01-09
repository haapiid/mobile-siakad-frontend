import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  final controller = Get.put(CustomAppBarController());

  CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hai, RIFKI HAFIDL AL.",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "2202048 - Teknik Informatika",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(controller.imageUser),
          ),
        ],
      ),
    );
  }
}

class CustomAppBarController extends GetxController {
  var imageUser = 'assets/images/profile.jpg';
}