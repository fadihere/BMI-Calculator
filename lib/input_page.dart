import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(colour: Color(0xFF1D1F33)),
                ),
                Expanded(
                  child: ReuseableCard(colour: Color(0xFF1D1F33)),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(colour: Color(0xFF1D1F33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(colour: Color(0xFF1D1F33)),
                ),
                Expanded(
                  child: ReuseableCard(colour: Color(0xFF1D1F33)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
