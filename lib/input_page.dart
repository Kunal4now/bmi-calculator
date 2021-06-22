import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const Color cardColour = Color(0xFF1D1E33);
const Color bottomContainerColour = Color(0xFFEB1555);


class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

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
                  child: ReusableCard(colour: cardColour),
                ),
                Expanded(
                  child: ReusableCard(colour: cardColour),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: cardColour),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: cardColour),
                ),
                Expanded(
                  child: ReusableCard(colour: cardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour});

  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
