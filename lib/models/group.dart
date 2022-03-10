import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:clubitapp/screens/root/root.dart';

class Group {
  Future<void> eventSetup(String event) async {
    CollectionReference users = FirebaseFirestore.instance.collection('Event');
    users.add({'event': event});
    return;
  }
}
