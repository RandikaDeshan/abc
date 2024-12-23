import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/usermodel.dart';
import 'auth/authservices.dart';

class UserService{
  final CollectionReference _usersCollection =
  FirebaseFirestore.instance.collection("user_data");

  Future<void> saveUser(UserModel user) async {
    try {
      final userCredential = await AuthService().createUserWithEmailAndPassword(
          email: user.email, password: user.password);

      final userId = userCredential!.user?.uid;

      if (userId != null) {
        final userRef = _usersCollection.doc(userId);
        final userMap = user.toJson();
        userMap['userId'] = userId;
        await userRef.set(userMap);
      }
    } catch (e) {
      print('Error creating user: $e');
    }
  }

  Future<void> googleSaveUser()async{
    try{
      final UserCredential? _userCredential = await AuthService().signInWithGoogle();
      final User? user = _userCredential?.user;

      if(user != null){
        final UserModel newUser = UserModel(
            email: user.email ?? "No Email",
            password: "",
            userId: user.uid, name: user.displayName ?? "No Name");

        final docRef = _usersCollection.doc(user.uid);
        await docRef.set(newUser.toJson());}
    }catch(error){
      print('Error creating user: $error');
    }
  }
}