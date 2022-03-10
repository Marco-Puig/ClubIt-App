import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:clubitapp/screens/root/root.dart';

Future<void> userSetup(String displayName, String groupId) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.add({'displayName': displayName, 'groupId': groupId, 'uid': uid});
  return;
}

/*create function to display group code in the club screen,
events, name, and when you join a club - recieve a notfication of the event.
*/

Future<void> groupSetup(BuildContext context, String groupId) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String uid = auth.currentUser!.uid.toString();
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => OurRoot(),
      ),
      (route) => false);
  CollectionReference groups = FirebaseFirestore.instance.collection('Groups');
  groups.add({'groupId': groupId, 'uid': uid});
  await _firestore.collection("Users").doc(uid).set({
    'groupId': groupId,
  });
  return;
}

Future<void> groupJoin(
    BuildContext context, String groupId, String userUid) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String uid = auth.currentUser!.uid.toString();
  userUid = uid;
  await _firestore.collection("Users").doc(userUid).set({
    'groupId': groupId,
  });
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => OurRoot(),
      ),
      (route) => false);

  return;
}

Future<void> descriptionSetup(String description) async {
  CollectionReference users =
      FirebaseFirestore.instance.collection('Groupinfo');
  users.add({'description': description});
  return;
}

//currently only stores the user's name, can also duplicate and adjust function to store other data from the user
