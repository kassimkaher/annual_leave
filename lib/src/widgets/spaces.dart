import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    super.key,
    this.height = kDefaultSpacing,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: double.infinity, height: kDefaultSpacing);
  }
}

class HorizantalSpace extends StatelessWidget {
  const HorizantalSpace({
    super.key,
    this.width = kDefaultSpacing,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: double.infinity, width: kDefaultSpacing);
  }
}
