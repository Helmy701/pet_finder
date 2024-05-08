// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder/core/theming/colors.dart';

class FilterItem extends StatelessWidget {
  final bool isActive;
  final String petType;
  const FilterItem({
    super.key,
    required this.isActive,
    required this.petType,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      duration: const Duration(milliseconds: 300),
      decoration: ShapeDecoration(
        color: isActive ? ColorsTheme.myGreen : Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isActive ? ColorsTheme.myGreen : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15)),
        shadows: [
          BoxShadow(
            color: isActive ? ColorsTheme.myGreen : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
          child: Text(
        petType,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
