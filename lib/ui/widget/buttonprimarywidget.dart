import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mart_mandiri_77/Constants/const.dart';

import '../screen/register.dart';

class ButtonPrimaryWidget extends StatelessWidget {
  String text;
  Color color = primaryColor;
  String? page;

  ButtonPrimaryWidget(
      {Key? key, required this.text, required this.color, this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(page!);
      },
      style: ElevatedButton.styleFrom(
        primary: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        child: Text(text),
      ),
    );
  }
}
