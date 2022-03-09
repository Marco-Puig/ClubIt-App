import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OurGroup {
  String id;
  String name;
  String leader;
  List<String> members;

  OurGroup({
    required this.id,
    required this.name,
    required this.leader, //later update
    required this.members, //later update
  });
}
