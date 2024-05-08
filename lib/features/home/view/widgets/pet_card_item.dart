import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder/core/theming/colors.dart';

class PetCardItem extends StatelessWidget {
  const PetCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: ColorsTheme.myGreen,
        elevation: 5,
        color: Colors.white,
        shadowColor: const Color.fromARGB(122, 52, 168, 83),
        // shadowColor: Color.fromARGB(103, 255, 153, 0),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
          height: 150.h,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 80 / 105,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Container(
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name:',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Geder:',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Type:',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
