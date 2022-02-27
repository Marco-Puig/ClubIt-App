import 'package:clubitapp/screens/login/login.dart';
import 'package:clubitapp/utils/mainTheme.dart';
import 'package:clubitapp/states/currentUser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

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
