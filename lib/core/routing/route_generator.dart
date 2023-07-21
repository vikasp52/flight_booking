import 'package:flight_booking/core/di/inection_container.dart';
import 'package:flight_booking/features/flight_booking/presentation/screens/flight_booking.dart';
import 'package:flight_booking/features/flight_results/data/model/flight_search.dart';
import 'package:flight_booking/features/flight_results/data/repository/repository.dart';
import 'package:flight_booking/features/flight_results/presentation/cubit/flight_result_cubit.dart';
import 'package:flight_booking/features/flight_results/presentation/screens/screens.dart';
import 'package:flight_booking/features/home/presentation/cubit/flight_data_cubit.dart';
import 'package:flight_booking/features/home/presentation/screens/screens.dart';
import 'package:flight_booking/features/login/data/repository/login_repository.dart';
import 'package:flight_booking/features/login/presentation/cubit/login_cubit.dart';
import 'package:flight_booking/features/login/presentation/screens/login_screen.dart';
import 'package:flight_booking/features/register/data/repository/registration_repository.dart';
import 'package:flight_booking/features/register/presentation/cubit/registration_cubit.dart';
import 'package:flight_booking/features/register/presentation/screens/screens.dart';
import 'package:flight_booking/features/splash/splash.dart';
import 'package:flight_booking/features/validate/data/repository/validation_repository.dart';
import 'package:flight_booking/features/validate/presentation/cubit/otp_validation_cubit.dart';
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
      case initialRoute:
        screen = const Splash();
        break;
      case loginRoute:
        screen = BlocProvider(
          create: (context) => LoginCubit(
            serviceLocator<LoginRepository>(),
          ),
          child: const LoginScreen(),
        );
        break;
      case registerationRoute:
        screen = BlocProvider(
          create: (context) => RegistrationCubit(
            serviceLocator<RegistrationRepository>(),
          ),
          child: const RegisterScreen(),
        );
        break;
      case otpVarificationRoute:
        screen = BlocProvider(
          create: (context) => OtpValidationCubit(
            otpValidationRepository: serviceLocator<OtpValidationRepository>(),
            userId: routeSettings.arguments as int,
          ),
          child: const OtpValidationScreen(),
        );
        break;
      case homeRoute:
        screen = BlocProvider(
          create: (context) => FlightDataCubit(),
          child: const HomeScreen(),
        );
        break;
      case flightResultRoute:
        screen = BlocProvider(
          create: (context) => FlightResultCubit(
            flightResultRepository: serviceLocator<FlightResultRepository>(),
            flightSearch: routeSettings.arguments as FlightSearch,
          ),
          child: const FlightResultScreen(),
        );
        break;
      case flightBookingRoute:
        screen =  FlightBooking(
          travellerCount: routeSettings.arguments as int,
        );
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
