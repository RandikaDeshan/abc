import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moon_nest/src/services/sharedpreservices.dart';
import 'package:moon_nest/src/views/auth/signin/signinpage.dart';
import 'package:moon_nest/src/views/navbar/bottomnavpage.dart';

class DataWrapper extends StatefulWidget {
  const DataWrapper({super.key});

  @override
  State<DataWrapper> createState() => _DataWrapperState();
}

class _DataWrapperState extends State<DataWrapper> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPreService().updatePage(no: 0);
  }
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
      return const BottomNavPage();
    }
  }
}
