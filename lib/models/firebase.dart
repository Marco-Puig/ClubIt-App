import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> userSetup(String displayName) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.add({'displayName': displayName, 'uid': uid});
  return;
}

Future<void> clubSetup(String clubID) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Clubs');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.add({'Club ID': clubID, 'uid': uid});
  return;
}
