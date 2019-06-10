import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_login_example/authentication_state.dart';
import 'package:flutter_login_example/signin_page.dart';
import 'home_page.dart';

class BuilderPage extends StatelessWidget {
  final StreamController<AuthenticationState> _streamController =
      new StreamController<AuthenticationState>();

  Widget buildUi(BuildContext context, AuthenticationState s) {
    if (s.authenticated) {
      return HomePage(_streamController);
    } else {
      return SignInPage(_streamController);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<AuthenticationState>(
        stream: _streamController.stream,
        initialData: new AuthenticationState.initial(),
        builder: (BuildContext context,
            AsyncSnapshot<AuthenticationState> snapshot) {
          final state = snapshot.data;
          return buildUi(context, state);
        });
  }
}
