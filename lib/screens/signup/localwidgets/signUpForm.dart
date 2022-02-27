import 'package:clubitapp/states/currentUser.dart';
import 'package:clubitapp/widgets/ourContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OurSignUpForm extends StatefulWidget {
  @override
  State<OurSignUpForm> createState() => _OurSignUpFormState();
}

class _OurSignUpFormState extends State<OurSignUpForm> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  void _signUpUser(String email, String password, BuildContext context) async {
    CurrentUser _currentUser = Provider.of<CurrentUser>(context, listen: false);
    try {
      if (await _currentUser.signUpUser(email, password)) {
        Navigator.pop(context);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Text(
              "Logging In:",
              style: TextStyle(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            controller: _fullNameController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline), hintText: "Name"),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.alternate_email), hintText: "Email"),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline), hintText: "Password"),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: "Confirm Password"),
            obscureText: true,
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            onPressed: () {
              if (_passwordController.text == _confirmPasswordController) {
                _signUpUser(
                    _emailController.text, _passwordController.text, context);
              } else {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Passwords do not match!"),
                  duration: Duration(seconds: 2),
                ));
              }
            },
          ),
        ],
      ),
    );
  }
}
