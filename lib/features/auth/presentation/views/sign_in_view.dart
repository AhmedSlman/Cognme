import 'package:cognme/core/functions/custom_navigate.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            customReplacementNavigate(context, '/homeView');
          },
          child: Text("GO HOME"),
        ),
      ),
    );
  }
}
