import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class BoxView extends StatelessWidget {
  const BoxView({
    super.key,
    this.width,
    this.height,
    this.color,
    this.borderRadius,
    this.cornerSmoothing,
    this.borderWidth,
    this.borderColor,
    this.child,
    this.margin,
    this.padding,
    this.gradient,
  });
  final double? width;
  final double? height;
  final Color? color;
  final double? borderRadius;
  final double? cornerSmoothing;
  final double? borderWidth;
  final Color? borderColor;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      decoration: ShapeDecoration(
        color: color,
        gradient: gradient,
        shape: SmoothRectangleBorder(
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 0,
          ),
          borderRadius: SmoothBorderRadius(
            cornerRadius: borderRadius ?? 0,
            cornerSmoothing: cornerSmoothing ?? 1,
          ),
        ),
      ),
      child: child,
    );
  }

//   Container(
//     height: 100,
//     width: 100,
//     decoration: ShapeDecoration(
//         color: Colors.red.withOpacity(0.75),
//         shape: SmoothRectangleBorder(
//             borderRadius: SmoothBorderRadius(
//               cornerRadius: 10,
//               cornerSmoothing: 0.5,
//             ),
//         ),
//     ),
// )
}
