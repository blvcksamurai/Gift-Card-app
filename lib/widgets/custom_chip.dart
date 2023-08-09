import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import 'app_text.dart';

class CustomChip extends StatelessWidget {
  final String label;
  bool isSelected;
  final Function()? onTap;
  CustomChip({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
            color: isSelected ? ColorName.primaryColor : ColorName.disabledGrey,
            borderRadius: BorderRadius.circular(50.0)),
        child: Center(
            child: AppText.small(
          label,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.white : ColorName.primaryColor,
        )),
      ),
    );
  }
}
