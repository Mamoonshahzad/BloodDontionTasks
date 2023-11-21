import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget campaignDetailsWidget(
    {required String fieldName, required String hintTxt}) {
  return Container(
    decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white),
    width: Get.width,
    height: Get.height * .07,
    child: Row(
      children: [
        Container(
          height: Get.height * .08,
          width: Get.width * .22,
          child: Center(
              child: Text(fieldName, style: const TextStyle(fontSize: 15))),
        ),
        const VerticalDivider(color: Colors.grey, thickness: 1),
        Container(
          height: Get.height * .08,
          width: Get.width * .6,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintTxt,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
