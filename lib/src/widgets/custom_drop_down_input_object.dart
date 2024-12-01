import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:flutter/material.dart';

class CustomObjectDropDownInput<T> extends StatelessWidget {
  const CustomObjectDropDownInput(
      {Key? key,
      required this.array,
      required this.onSelect,
      required this.hint,
      this.background,
      this.borderColor,
      this.bottomPadding,
      this.enable = true,
      this.leftPadding,
      this.rightPadding,
      this.topPadding,
      required this.selectValue,
      this.readOnly = false,
      this.onValidate,
      this.autovalidateMode,
      this.offset,
      required this.getTitle})
      : super(key: key);
  final List<T> array;
  final Function(T selectData) onSelect;
  final String? Function(T value) getTitle;

  final String hint;
  final Color? background;
  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;

  final bool enable;
  final dynamic selectValue;
  final Color? borderColor;
  final bool readOnly;
  final Offset? offset;
  final String? Function(T? value)? onValidate;
  final AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownButtonFormField<T>(
      //icon: const Icon(FeatherIcons.chevronDown),

      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      validator: (a) {
        if (onValidate != null && onValidate!(a) != null) {
          return onValidate!(a);
        }

        return a == null ? "is_required".tr() : null;
      },

      decoration: InputDecoration(
        // fillColor: enable ? Colors.black38 : Colors.transparent,
        // filled: true,
        hintText: hint,
        errorMaxLines: 2,
        isDense: true,
        enabled: enable,
        errorStyle: theme.textTheme.bodySmall?.copyWith(color: Colors.red),
        // contentPadding: const EdgeInsets.only(
        //     bottom: 12, top: 12, left: kDefaultPadding, right: kDefaultPadding),
        hintStyle: theme.textTheme.bodyLarge,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            kDefaultBorderRadius,
          ),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(
        //     kDefaultBorderRadius,
        //   ),
        //   borderSide: BorderSide(color: theme.primaryColor),
        // ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(
        //     kDefaultBorderRadius,
        //   ),
        //   borderSide: const BorderSide(
        //     color: Colors.red,
        //   ),
        // ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(
        //     kDefaultBorderRadius,
        //   ),
        //   borderSide: const BorderSide(color: Colors.transparent),
        // ),
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(
        //     kDefaultBorderRadius,
        //   ),
        //   borderSide: const BorderSide(color: Colors.transparent),
        // ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(
        //     kDefaultBorderRadius,
        //   ),
        //   borderSide: const BorderSide(color: Colors.transparent),
        // ),
      ),

      hint: Text(
        enable ? hint : (selectValue?.name.tr() ?? ""),
        style: theme.textTheme.bodyLarge,
      ),
      // buttonStyleData: ButtonStyleData(
      //   height: 58,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      //   ),
      // ),

      // iconStyleData: const IconStyleData(
      //     icon: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      //   child: Icon(FeatherIcons.chevronDown),
      // )),

      // dropdownStyleData: DropdownStyleData(
      //   decoration: BoxDecoration(
      //     color: theme.cardColor,
      //     borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      //   ),
      // ),

      value: selectValue,

      onChanged: (newValue) {
        readOnly ? null : onSelect(newValue as T);
      },
      items: !enable
          ? null
          : array.map<DropdownMenuItem<T>>((T value) {
              return DropdownMenuItem<T>(
                value: value,
                child: Text(
                  getTitle(value) ?? "",
                  style: theme.textTheme.bodyMedium,
                ),
              );
            }).toList(),
    );
  }
}
