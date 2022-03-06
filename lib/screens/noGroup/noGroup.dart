import 'package:flutter/material.dart';

class OurNoGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _goToJoin() {}
    void _goToCreate() {}
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(80.0),
            child: Image.asset("assets/clubit-logo-t.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Welcome to ClubIt!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "It seems that you are not in a club, you can select either " +
                  "to join a club or create a club.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Join", style: TextStyle(color: Colors.white)),
                  onPressed: () => _goToJoin(),
                  color: Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Color.fromARGB(255, 32, 12, 85),
                      width: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          RaisedButton(
            child: Text("Create"),
            onPressed: () => _goToCreate(),
            color: Theme.of(context).canvasColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(
                color: Theme.of(context).secondaryHeaderColor,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
