import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder/core/theming/colors.dart';
import 'package:pet_finder/features/home/view/widgets/filter_list_view.dart';
import 'package:pet_finder/features/home/view/widgets/pet_card_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Pets',
          style: TextStyle(
              color: ColorsTheme.myGreen, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          const FilterListView(),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const PetCardListView(),
          )
        ],
      ),
    );
  }
}
