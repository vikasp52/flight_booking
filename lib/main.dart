import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/routing/routing.dart';
import 'package:flight_booking/features/validate/presentation/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (_, child) => MaterialApp(
        home: child,
        theme: lightTheme,
        navigatorKey: RouteGenerator.navigatorKey,
        initialRoute: RouteGenerator.initialRoute,
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
      child: const OtpValidationScreen(),
    );
  }
}
