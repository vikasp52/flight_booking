import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/routing/routing.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        RouteGenerator.pushReplacement(
          routeName: RouteGenerator.loginRoute,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Innovation\nFactory',
          textAlign: TextAlign.center,
          style: CustomTypography.headingBlue,
        ),
      ),
    );
  }
}
