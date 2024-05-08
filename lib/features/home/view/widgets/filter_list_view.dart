import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder/features/home/view/widgets/filter_item.dart';

class FilterListView extends StatefulWidget {
  const FilterListView({super.key});

  @override
  State<FilterListView> createState() => _FilterListViewState();
}

class _FilterListViewState extends State<FilterListView> {
  final List<String> petTypes = [
    'All',
    'Cat',
    'Dog',
    'Hourse',
    'bird',
    'animal',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: petTypes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: FilterItem(
              isActive: activeIndex == index,
              petType: petTypes[index],
            ),
          ),
        ),
      ),
    );
  }
}
