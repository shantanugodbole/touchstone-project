import 'package:flutter/material.dart';
import './imagewidget.dart';

class ScenePicker extends StatelessWidget {
  final Widget label;
  final Color color;
  ScenePicker(this.color, this.label);
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      height: 75,
      minWidth: 175,
      buttonColor: color,
      child: RaisedButton.icon(
          onPressed: () {},
          icon: ImageWidget('assets/solution1.png'),
          label: label),
    );
  }
}
