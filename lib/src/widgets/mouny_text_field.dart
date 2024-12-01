import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class MounyTextField extends CustomInputField {
  const MounyTextField({super.key, super.controller, super.validatThis})
      : super(
          suffixIcon: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "د.ع",
              textAlign: TextAlign.center,
            ),
          ),
          topPadding: 12,
          bottomPadding: 12,
          leftPadding: kDefaultPadding,
          rightPadding: kDefaultPadding,
          type: TextFieldType.currency,
          textInputType: TextInputType.number,
          errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        );
}
