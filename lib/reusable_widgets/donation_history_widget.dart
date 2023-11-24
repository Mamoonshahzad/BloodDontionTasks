import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget reUsableWidgetRegScreen({
  required String userName,
  required String userImage,
  String? bloodAmount,
}) {
  return Container(
      width: Get.width,
      height: Get.height * .17,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            SizedBox(
              width: Get.width * 0.2,
              height: Get.height * 0.17,
              child: CircleAvatar(
                backgroundImage:
                    Image.network(userImage, fit: BoxFit.cover).image,
              ),
            ),
            SizedBox(
              width: Get.width * .5,
              height: Get.height * 0.17,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Align(alignment: Alignment.centerLeft),
                    Text(userName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(bloodAmount!)
                  ]),
            )
          ],
        ),
      ));
}
