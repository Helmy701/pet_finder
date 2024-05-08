import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder/core/routes/app_router.dart';
import 'package:pet_finder/pet_finder_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(PetFinderApp(
    appRouter: AppRouter(),
  ));
}
