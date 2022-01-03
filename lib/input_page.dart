import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';

const bottomButtonHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFFEB1555);
const inActiveCardColor = Color(0xFF1D1F33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color maleCardColor = inActiveCardColor;
Color femaleCardColor = inActiveCardColor;
void updateColor(int gender) {
  //if return 1 it is MALE, if 2 it is FEMALE
  if (gender == 1) {
    if (maleCardColor == inActiveCardColor) {
      maleCardColor = activeCardColor;
      femaleCardColor = inActiveCardColor;
    } else {
      maleCardColor = inActiveCardColor;
    }
  }
  if (gender == 2) {
    if (femaleCardColor == inActiveCardColor) {
      femaleCardColor = activeCardColor;
      maleCardColor = inActiveCardColor;
    } else {
      femaleCardColor = inActiveCardColor;
    }
  }
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
                  child: ReuseableCard(
                    ontap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: maleCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    ontap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    colour: femaleCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(colour: inActiveCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(colour: inActiveCardColor),
                ),
                Expanded(
                  child: ReuseableCard(colour: inActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            child: Column(children: <Widget>[]),
            margin: EdgeInsets.only(top: 10),
            color: bottomContainerColor,
            height: bottomButtonHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
