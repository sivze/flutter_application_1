import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'main.dart'; // Import your main.dart file
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart'; // new


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // User is signed in, navigate to the MainScreen
          return const MainScreen();
        } else {
          // User is not signed in, show the sign-in options
          return SignInScreen(
           providers: [
             EmailAuthProvider(),
             GoogleProvider(clientId: "987752711098-klejvgqv97t5nj128hckme0d28euqaul.apps.googleusercontent.com"),
           ],
           headerBuilder: (context, constraints, shrinkOffset) {
             return Padding(
               padding: const EdgeInsets.all(20),
               child: AspectRatio(
                 aspectRatio: 1,
               ),
             );
           },
           subtitleBuilder: (context, action) {
             return Padding(
               padding: const EdgeInsets.symmetric(vertical: 10),
               child: Text(
                 'Welcome',
                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
               ),
             );
           },
           footerBuilder: (context, action) {
             return Padding(
               padding: const EdgeInsets.all(20),
               child: Text(
                 'Please sign in to continue',
                 textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 16),
               ),
             );
           },
           sideBuilder: (context, constraints) {
             return Padding(
               padding: const EdgeInsets.all(20),
               child: AspectRatio(
                 aspectRatio: 1,
               ),
             );
           },
         );
      }
      }
    ); // Added closing parenthesis and semicolon here
  }
}


