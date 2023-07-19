import 'package:flight_booking/features/flight_booking/presentation/screens/flight_booking.dart';
import 'package:flight_booking/features/flight_results/presentation/screens/screens.dart';
import 'package:flight_booking/features/home/presentation/screens/screens.dart';
import 'package:flight_booking/features/login/presentation/screens/login_screen.dart';
import 'package:flight_booking/features/register/presentation/screens/screens.dart';
import 'package:flight_booking/features/splash/splash.dart';
import 'package:flight_booking/features/validate/presentation/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  static const String initialRoute = '/';
  static const String loginRoute = '/Login';
  static const String registerationRoute = '/Registeration';
  static const String otpVarificationRoute = '/OtpVarification';
  static const String homeRoute = '/Home';
  static const String flightResultRoute = '/FlightResult';
  static const String flightBookingRoute = '/FlightBooking';
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic>? pushName<Argument>(
      {required String routeName, Argument? argument}) {
    return navigatorKey.currentState?.pushNamed(
      routeName,
      arguments: argument,
    );
  }

  static Future<dynamic>? pushReplacement<Argument>(
      {required String routeName, Argument? argument}) {
    return navigatorKey.currentState?.pushReplacementNamed(
      routeName,
      arguments: argument,
    );
  }

  static Future<dynamic>? pushAndRemoveUntil<Argument>(
      {required String routeName}) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
    );
  }

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    late Widget screen;

    switch (routeSettings.name) {
      case loginRoute:
        screen = const LoginScreen();
        break;
      case registerationRoute:
        screen = const RegisterScreen();
        break;
      case otpVarificationRoute:
        screen = const OtpValidationScreen();
        break;
      case homeRoute:
        screen = const HomeScreen();
        break;
      case flightResultRoute:
        screen = const FlightResultScreen();
        break;
      case flightBookingRoute:
        screen = const FlightBookingScreen();
        break;

      default:
        screen = const Scaffold(
          body: Center(
            child: Text(
              'Invalid Route',
            ),
          ),
        );
    }

    return MaterialPageRoute(
      builder: (_) => screen,
    );
  }
}
