import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder/core/theming/colors.dart';
import 'package:pet_finder/features/details/view/widgets/app_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'Pet Details',
            style: TextStyle(
                color: ColorsTheme.myGreen, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            children: [
              Container(
                width: 300.w,
                height: 320.h,
                color: ColorsTheme.myGreen,
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text('Name: '),
              SizedBox(
                height: 20.h,
              ),
              const Text('Size: '),
              SizedBox(
                height: 20.h,
              ),
              const Text('color: '),
              SizedBox(
                height: 20.h,
              ),
              const Text('address: '),
              const Spacer(),
              const AppButton(),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ));
  }
}
