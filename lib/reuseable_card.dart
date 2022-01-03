import 'package:flutter/material.dart';

//Cards
class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardChild, this.ontap});
  final Color colour;
  final Widget cardChild;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
