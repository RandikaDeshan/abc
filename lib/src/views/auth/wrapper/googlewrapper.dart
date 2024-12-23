import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moon_nest/src/views/onBordingPages/question.dart';

import '../signin/signinpage.dart';

class GoogleWrapper extends StatelessWidget {
  const GoogleWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    if(user?.uid == null){
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return const SignInPage();
            },));
          }, icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        body: const Center(
          child: Text("Login Information are wrong!"),
        ),
      );

    }
    else{
      return const QuestionPage();
    }
  }
}
