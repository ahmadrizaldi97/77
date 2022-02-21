import 'package:flutter/material.dart';

import 'package:mart_mandiri_77/Constants/const.dart';

class InputFieldWidget extends StatelessWidget {
  String? hintText = "";

  InputFieldWidget({
    Key? key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
