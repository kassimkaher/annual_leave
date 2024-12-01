import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class TextInputField extends CustomInputField {
  const TextInputField(
      {super.key,
      super.controller,
      super.maxLength,
      super.validatThis,
      super.type,
      super.label})
      : super(
          topPadding: 4,
          bottomPadding: 4,
          leftPadding: kDefaultPadding,
          rightPadding: kDefaultPadding,
          textInputType: TextInputType.text,
          errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        );
}

class PasswordInputField extends CustomInputField {
  const PasswordInputField(
      {super.key,
      super.controller,
      super.maxLength,
      super.validatThis,
      super.label})
      : super(
          topPadding: 4,
          bottomPadding: 4,
          leftPadding: kDefaultPadding,
          rightPadding: kDefaultPadding,
          textInputType: TextInputType.visiblePassword,
          errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        );
}

class NumberInput extends CustomInputField {
  const NumberInput(
      {super.key,
      super.controller,
      super.maxLength,
      super.validatThis,
      super.label})
      : super(
          topPadding: 4,
          bottomPadding: 4,
          leftPadding: kDefaultPadding,
          rightPadding: kDefaultPadding,
          textInputType: TextInputType.number,
          errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        );
}

class TextAreaInputField extends CustomInputField {
  const TextAreaInputField(
      {super.key, super.controller, super.validatThis, super.label})
      : super(
            topPadding: 4,
            bottomPadding: 4,
            leftPadding: 12,
            rightPadding: 12,
            textInputType: TextInputType.text,
            errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
            maxLine: 3);
}

class DateInputField extends CustomInputField {
  DateInputField(
      {super.key,
      super.controller,
      super.validatThis,
      super.label,
      super.enable})
      : super(
          topPadding: 4,
          bottomPadding: 4,
          leftPadding: kDefaultPadding,
          rightPadding: kDefaultPadding,
          textInputType: TextInputType.text,
          readOnly: true,
          onTap: () async {
            DateTime? selectedDate = await showDatePicker(
              context: navigatorKey.currentContext!,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );
            if (selectedDate != null) {
              controller?.text = selectedDate.toString().split(" ")[0];
            }
          },

          // () {
          //   showDatePicker(
          //     context: context,
          //     initialDate: DateTime.now(),
          //     firstDate: DateTime.now(),
          //     lastDate: DateTime.now().add(const Duration(days: 365)),
          //   ).then((value) {
          //     if (value != null) {
          //       controller.text = value.toString().split(" ")[0];
          //     }
          //   });
          // },
          errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        );
}

getDate(TextEditingController controller) {
  showDatePicker(
    context: navigatorKey.currentContext!,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime.now().add(const Duration(days: 365)),
  ).then((value) {
    if (value != null) {
      controller.text = value.toString().split(" ")[0];
    }
  });
}
