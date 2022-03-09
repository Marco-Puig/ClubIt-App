import 'package:clubitapp/screens/home/home.dart';
import 'package:clubitapp/screens/login/group/group.dart';
import 'package:clubitapp/screens/signup/localwidgets/signUpForm.dart';
import 'package:clubitapp/screens/login/login.dart';
import 'package:clubitapp/screens/noGroup/noGroup.dart';
import 'package:clubitapp/states/currentUser.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum AuthStatus {
  unknown,
  // notLoggedIn,
  notInGroup,
  inGroup,
}

class OurRoot extends StatefulWidget {
  @override
  _OurRootState createState() => _OurRootState();
}

class _OurRootState extends State<OurRoot> {
  AuthStatus _authStatus = AuthStatus.unknown;

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    //get the state, check current User, set AuthStatus based on state
    //OurGroup _currentGroup = Provider.of<OurGroup>(context, listen: false);

    /* if (_currentGroup.id != null) {
      setState(() {
        _authStatus = AuthStatus.inGroup;
      });
    } else {
      setState(() {
        _authStatus = AuthStatus.notInGroup;
      });
    }*/
  }

  @override
  Widget build(BuildContext context) {
    late Widget retVal;

    switch (_authStatus) {
      case AuthStatus.unknown:
        //retVal = OurSplashScreen();
        break;
      case AuthStatus.notInGroup:
        retVal = OurNoGroup();
        break;
      case AuthStatus.inGroup:
        retVal = HomeScreen();
        break;
      default:
    }
    return retVal = HomeScreen();
  }
}
