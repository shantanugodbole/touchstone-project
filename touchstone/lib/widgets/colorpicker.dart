import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  final Color color;
  final Widget icon;
  final Function colorChanger;
  ColorPicker(this.color, this.icon, this.colorChanger);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 40,
        height: 90,
        child: MaterialButton(
          elevation: 0,
          shape: CircleBorder(side: BorderSide(color: color)),
          onPressed: () {
            colorChanger();
          },
          color: color,
          child: icon,
        ),
      ),
    );
  }
}
