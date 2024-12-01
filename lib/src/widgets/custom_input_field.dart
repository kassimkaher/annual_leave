import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomInputField extends HookWidget {
  const CustomInputField(
      {Key? key,
      this.trailing,
      this.label,
      this.icon,
      this.enable = true,
      this.controller,
      this.textInputType = TextInputType.text,
      this.maxLine,
      this.borderColor,
      this.backgroundColor,
      this.onFocus,
      this.leftPadding,
      this.rightPadding,
      this.bottomPadding,
      this.topPadding,
      this.maxLength,
      this.disableColor,
      this.suffixIcon,
      this.readOnly = false,
      this.onChanged,
      this.errorStyle,
      this.onTap,
      this.validatThis,
      this.inputFormat,
      this.height,
      this.helperFontSize,
      this.textAlign = TextAlign.start,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.type = TextFieldType.text,
      this.focusNode})
      : super(key: key);

  final bool readOnly;
  final bool enable;
  final Widget? trailing;
  final Widget? suffixIcon;
  final Widget? icon;

  final TextEditingController? controller;
  final TextInputType textInputType;
  final Color? borderColor;
  final Color? disableColor;
  final Color? backgroundColor;
  final int? maxLine;

  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;
  final int? maxLength;

  final String? label;
  final TextStyle? errorStyle;
  final Function(String value)? onChanged;
  final Function()? onTap;
  final void Function(bool isFocus)? onFocus;
  final String? Function(String? value)? validatThis;
  final TextAlign textAlign;
  final List<TextInputFormatter>? inputFormat;
  final double? height;
  final AutovalidateMode autovalidateMode;
  final FocusNode? focusNode;
  final double? helperFontSize;
  final TextFieldType type;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isPasswordShowMessage = useState(false);
    return ClipRRect(
      child: TextFormField(
        focusNode: focusNode,
        autovalidateMode: autovalidateMode,
        maxLines: maxLine ?? 1,
        maxLength: maxLength,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        keyboardType: textInputType,
        controller: controller,
        readOnly: readOnly,
        inputFormatters:
            type == TextFieldType.currency ? [CurrencyInputFormatter()] : [],
        enabled: enable,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        onTap: () {
          onTap != null ? onTap!() : null;
          // controller!.selection = TextSelection.fromPosition(
          //     TextPosition(offset: controller!.text.length));

          if (controller!.selection ==
              TextSelection.fromPosition(
                  TextPosition(offset: controller!.text.length - 1))) {
            controller!.selection = TextSelection.fromPosition(
                TextPosition(offset: controller!.text.length));
          }
        },
        textAlign: textAlign,
        textAlignVertical: TextAlignVertical.center,
        obscureText: textInputType == TextInputType.visiblePassword &&
            !isPasswordShowMessage.value,
        onChanged: onChanged,
        decoration: InputDecoration(
          fillColor: !enable
              ? Colors.transparent
              : backgroundColor ??
                  theme.colorScheme.inversePrimary.withOpacity(0.3),
          filled: true,
          hintText: label,
          suffixIcon: textInputType == TextInputType.visiblePassword
              ? IconButton(
                  onPressed: () => isPasswordShowMessage.value =
                      !isPasswordShowMessage.value,
                  icon: Icon(isPasswordShowMessage.value
                      ? FeatherIcons.eye
                      : FeatherIcons.eyeOff))
              : suffixIcon,
          errorStyle: errorStyle ??
              theme.textTheme.bodySmall?.copyWith(color: Colors.red, height: 1),
          errorMaxLines: 2,
          prefixIcon: icon != null
              ? Padding(
                  padding: EdgeInsets.only(
                      right: rightPadding ?? kDefaultPadding,
                      left: leftPadding ?? kDefaultPadding,
                      bottom: bottomPadding ?? 0,
                      top: topPadding ?? 0),
                  child: icon,
                )
              : null,
          // suffix: suffixIcon,

          contentPadding: EdgeInsets.only(
              bottom: 12,
              top: 12,
              left: leftPadding ?? 0,
              right: rightPadding ?? 0),
          hintStyle: theme.textTheme.bodyMedium,
          helperStyle: TextStyle(fontSize: helperFontSize),
          //   border: InputBorder.none
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              kDefaultBorderRadius,
            ),
            borderSide: BorderSide(color: theme.colorScheme.inversePrimary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              kDefaultBorderRadius,
            ),
            borderSide: BorderSide(color: theme.colorScheme.inversePrimary),
          ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(
          //     kDefaultBorderRadius,
          //   ),
          //   borderSide: const BorderSide(color: Colors.red),
          // ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(
          //     kDefaultBorderRadius,
          //   ),
          //   borderSide: BorderSide(color: theme.primaryColor),
          // ),
          // disabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(
          //     kDefaultBorderRadius,
          //   ),
          //   borderSide: const BorderSide(color: Colors.transparent),
          // ),
          enabledBorder: readOnly
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    kDefaultBorderRadius,
                  ),
                  borderSide: const BorderSide(color: Colors.transparent),
                )
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    kDefaultBorderRadius,
                  ),
                  borderSide: BorderSide(
                      color: borderColor ?? theme.colorScheme.inversePrimary,
                      width: 0.2),
                ),
        ),
        style: theme.textTheme.titleSmall,
        validator: (h) {
          if (validatThis != null) {
            return validatThis!(h);
          }

          return null;
        },
      ),
    );
  }
}

enum TextFieldType { text, number, password, email, phone, currency }

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String patttern = r'^[٠-٩]+$';
    RegExp regExp = RegExp(patttern);
    var isAr = regExp.hasMatch(newValue.text.replaceAll(",", ""));
    if (newValue.text.length < 3) {
      return newValue.copyWith(
          text: newValue.text,
          selection: TextSelection.collapsed(offset: newValue.text.length));
    }

    var value = newValue.text.toEnglishNumber();
    value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');

    return newValue.copyWith(
        text: isAr ? value.arabicNumber : value,
        selection: TextSelection.collapsed(offset: value.length));
  }
}
