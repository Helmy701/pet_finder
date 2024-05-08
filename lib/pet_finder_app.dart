// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_finder/core/routes/app_router.dart';
import 'package:pet_finder/core/routes/routs.dart';

class PetFinderApp extends StatelessWidget {
  final AppRouter appRouter;

  const PetFinderApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, context) {
        return MaterialApp(
          title: 'Pet finder',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.homeScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
