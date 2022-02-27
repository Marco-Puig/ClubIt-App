import 'package:clubitapp/screens/login/login.dart';
import 'package:clubitapp/utils/mainTheme.dart';
import 'package:clubitapp/states/currentUser.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentUser(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MainTheme().buildTheme(),
        home: OurLogin(),
      ),
    );
  }
}
