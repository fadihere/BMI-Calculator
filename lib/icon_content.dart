import 'package:flutter/material.dart';

//Icon color
const iconColor = Color(0xFFFFFFFF);

//Class of Icons inside of card
class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: iconColor,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}
