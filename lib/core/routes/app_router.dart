import 'package:flutter/material.dart';
import 'package:pet_finder/core/routes/routs.dart';
import 'package:pet_finder/features/details/view/details_screen.dart';
import 'package:pet_finder/features/home/view/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.detailsScreen:
        return MaterialPageRoute(
          builder: (_) => const DetailsScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
