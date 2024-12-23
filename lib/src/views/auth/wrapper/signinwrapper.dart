import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moon_nest/src/views/auth/signin/signinpage.dart';
import 'package:moon_nest/src/views/auth/signup/termspage.dart';
import 'package:moon_nest/src/views/introScreens/splashScreen.dart';
import 'package:moon_nest/src/views/navbar/bottomnavpage.dart';

import '../../../services/sharedpreservices.dart';

class SignInWrapper extends StatefulWidget {
  const SignInWrapper({super.key});

  @override
  State<SignInWrapper> createState() => _SignInWrapperState();
}

class _SignInWrapperState extends State<SignInWrapper> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPreService().savePage();
    SharedPreService().updatePage(no: 0);
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return const BottomNavPage();
        } else {
          return const SplashScreen();
        }
      },
    );
  }
}
