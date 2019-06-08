import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'authentication_state.dart';

class HomePage extends StatelessWidget {
  final StreamController<AuthenticationState> _streamController;

  const HomePage(this._streamController);

  signOut() {
    _streamController.add(AuthenticationState.signedOut());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: Center(
        child: RaisedButton(
          child: Text('Sign Out'),
          onPressed: signOut,
        ),
      ),
    );
  }
}
