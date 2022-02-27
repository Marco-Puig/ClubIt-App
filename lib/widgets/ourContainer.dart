import 'package:flutter/material.dart';

class OurContainer extends StatelessWidget {
  final Widget child;

  const OurContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8.0,
            spreadRadius: 1.0,
            offset: Offset(
              4.0,
              4.0,
            ),
          )
        ],
      ),
      child: child,
    );
  }
}
