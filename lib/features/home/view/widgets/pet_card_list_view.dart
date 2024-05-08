import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder/core/routes/routs.dart';
import 'package:pet_finder/features/home/view/widgets/pet_card_item.dart';

class PetCardListView extends StatelessWidget {
  const PetCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 618.h,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.detailsScreen);
              },
              child: const PetCardItem());
        },
      ),
    );
  }
}
