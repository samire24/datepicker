import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Function onPress;
  final String label;

  Button({this.onPress, @required this.label});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  double opacity = 1;

  handlePress() {
    if (widget.onPress != null) {
      widget.onPress();
    }

    setState(() {
      opacity = 0;
    });

    new Future.delayed(const Duration(milliseconds: 150), () {
      setState(() {
        opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handlePress,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: Duration(milliseconds: 150),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: double.infinity,
          child: Center(
              child: Text(
            widget.label,
            style: TextStyle(fontSize: 16),
          )),
        ),
      ),
    );
  }
}
