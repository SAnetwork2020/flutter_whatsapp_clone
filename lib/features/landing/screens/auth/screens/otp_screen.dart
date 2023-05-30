import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../utils/colors.dart';
import '../controller/auth_controller.dart';

class OTPScreen extends ConsumerWidget {
  static const String routeName = "/otp-screen";
  final String verificationId;
  const OTPScreen({super.key, required this.verificationId});

  void verifyOTP(BuildContext context, String userOTP, WidgetRef ref) {
    ref.read(authControllerProvider).verifyOTP(
          context,
          verificationId,
          userOTP,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verifying your number"),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text("We have sent an SMS with a code."),
            SizedBox(
              width: size.width * 0.5,
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: "- - - - - -",
                  hintStyle: TextStyle(
                    fontSize: 30,
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 6) {
                    verifyOTP(
                      context,
                      value.trim(),
                      ref,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
