import 'package:amt/data/common/colors.dart';
import 'package:amt/data/common/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ThemeConstants.themePadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 38,
            ),
            Text(
              'Sign in',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 42,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: ThemeColors.borderColor,
                ),
                borderRadius:
                    BorderRadius.circular(ThemeConstants.borderRadius),
              ),
              child: const Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text('Email or Phone'),
                      prefixIcon: Icon(CupertinoIcons.person)),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: ThemeColors.borderColor,
                ),
                borderRadius:
                    BorderRadius.circular(ThemeConstants.borderRadius),
              ),
              child: const Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(CupertinoIcons.lock),
                    suffixIcon: Icon(CupertinoIcons.eye_slash),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius:
                      BorderRadius.circular(ThemeConstants.borderRadius)),
              width: MediaQuery.of(context).size.width,
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Continue',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    CupertinoIcons.arrow_right,
                    color: Color(0xffffffff),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New Here? '),
                Text(
                  'Create An Account',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
