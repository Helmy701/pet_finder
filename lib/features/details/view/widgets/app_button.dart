import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder/core/theming/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16.r,
            ),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          ColorsTheme.myGreen,
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 14.h,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(double.maxFinite, 50.h),
        ),
      ),
      child: const Text(
        'Pet\'s Website',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
