import 'dart:async';

import 'package:amt/data/common/colors.dart';
import 'package:amt/data/common/constants.dart';
import 'package:amt/ui/screens/auth/bloc/auth_bloc.dart';
import 'package:amt/ui/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _password = TextEditingController();
  StreamSubscription? _streamSubscription;
  @override
  Widget build(BuildContext newContext) {
    return BlocProvider<AuthBloc>(
      create: (newContext) {
        final bloc = AuthBloc()..add(Authstarted());

        _streamSubscription = bloc.stream.listen((state) {
          if (state is AuthSuccess) {
            Navigator.of(newContext).push(MaterialPageRoute(
              builder: (newContext) {
                return const HomeScreen();
              },
            ));
          } else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('An Error Occured')),
            );
          }
        });

        return bloc;
      },
      child: Padding(
        padding: EdgeInsets.all(ThemeConstants.themePadding),
        child: SingleChildScrollView(child: BlocBuilder<AuthBloc, AuthState>(
          builder: (newContext, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 38,
                ),
                Text(
                  'Sign in',
                  style: Theme.of(newContext).textTheme.headline6,
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
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
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
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      controller: _password,
                      decoration: const InputDecoration(
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
                        color: Theme.of(newContext).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<AuthBloc>(newContext).add(AuthButtonClicked(
                      identifier: _usernameController.text,
                      password: _password.text,
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(newContext).colorScheme.primary,
                        borderRadius:
                            BorderRadius.circular(ThemeConstants.borderRadius)),
                    width: MediaQuery.of(newContext).size.width,
                    height: 65,
                    child: state is AuthStarted
                        ? Center(
                            child: CircularProgressIndicator(
                                color: Theme.of(context).colorScheme.onPrimary),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Continue',
                                style: TextStyle(
                                  color: Theme.of(newContext)
                                      .colorScheme
                                      .onPrimary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Icon(
                                CupertinoIcons.arrow_right,
                                color:
                                    Theme.of(newContext).colorScheme.onPrimary,
                              )
                            ],
                          ),
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
                        color: Theme.of(newContext).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        )),
      ),
    );
  }
}
