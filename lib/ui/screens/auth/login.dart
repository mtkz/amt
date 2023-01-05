import 'package:amt/data/common/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ThemeConstants.themePadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Sign in'),
          TextField(
            decoration: InputDecoration(
              label: Text('Email or Phone'),
            ),
          ),
        ],
      ),
    );
  }
}
