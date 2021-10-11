import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService({required this.uid});

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future updateUserData(String name, String profilePic, String bio,
      String hometown, String age) async {
    return await usersCollection.doc(uid).set({
      'username': name,
      'profile_pic': profilePic,
      'bio': bio,
      'hometown': hometown,
      'age': age
    });
  }
}
