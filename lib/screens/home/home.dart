import 'package:clubitapp/screens/noGroup/noGroup.dart';
import 'package:clubitapp/states/currentUser.dart';
import 'package:clubitapp/widgets/ourContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  void _goToNoGroup(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OurNoGroup(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OurContainer(
              child: Column(
                children: <Widget>[
                  Text(
                    "Android Study Jam - Week 1",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey[600],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Starting In: ",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          "8 Days",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: RaisedButton(
              child: Text(
                "Previous Events",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => _goToNoGroup(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OurContainer(
              child: Column(
                children: <Widget>[
                  Text(
                    "Chat: \n\n\n\n\n\n\n",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: RaisedButton(
              child: Text(
                "Join Other Clubs",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => _goToNoGroup(context),
            ),
          ),
        ],
      ),
    );
  }
}
