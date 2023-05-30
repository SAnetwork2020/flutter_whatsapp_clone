import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/common/widgets/error.dart';
import 'package:flutter_whatsapp_clone/features/landing/screens/auth/screens/login_screen.dart';

import 'features/landing/screens/auth/screens/otp_screen.dart';
import 'features/landing/screens/auth/screens/user_info_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OTPScreen.routeName:
      final verficationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verficationId,
        ),
      );
    case UserInfoScreen.routeName:
      // final verficationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => const UserInfoScreen(
          // verificationId: verficationId,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: "This page doesn't exit"),
        ),
      );
  }
}
