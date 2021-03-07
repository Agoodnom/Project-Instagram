import 'package:flutter/material.dart';
import 'package:instagram/constants/material_white.dart';
import 'package:instagram/home_page.dart';
import 'package:instagram/screens/auth_screen.dart';
import 'package:instagram/widgets/my_progress_indicator.dart';
import 'package:provider/provider.dart';
import 'package:instagram/models/firebase_auth_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  FirebaseAuthState _firebaseAuthState = FirebaseAuthState();

  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FirebaseAuthState>.value(
      value: _firebaseAuthState,
      child: MaterialApp(
        home: Consumer<FirebaseAuthState>(
          builder:
              (BuildContext context, FirebaseAuthState firebaseAuthState, Widget child) {
            switch (firebaseAuthState.firebaseAuthStatus) {
              case FirebaseAuthStatus.signout:
                return AuthScreen();
              case FirebaseAuthStatus.signin:
                return HomePage();
              default:
                return MyProgressIndicator();
            }
          },
        ),
        theme: ThemeData(primarySwatch: white),
      ),
    );
  }
}
