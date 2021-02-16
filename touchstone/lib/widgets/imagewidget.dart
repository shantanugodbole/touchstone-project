import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  ImageWidget(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imagePath),
    );
  }
}
