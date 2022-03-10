import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clubitapp/models/user.dart';
import 'package:clubitapp/screens/login/group/group.dart';
import 'package:flutter/foundation.dart';
import '../models/group.dart';

class CurrentGroup extends ChangeNotifier {
  Group _currentGroup = Group();

  Group get getCurrentGroup => _currentGroup;

  void updateStateFromDatabase(String groupId) async {
    try {
      //get the groupInfo from firebase
    } catch (e) {
      print(e);
    }
  }
}
