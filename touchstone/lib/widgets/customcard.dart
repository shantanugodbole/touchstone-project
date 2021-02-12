import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String header;
  final String subtext;
  // final Image image;
  CustomCard(this.header, this.subtext);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: MediaQuery.of(context).size.width / 4,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [Text(header), Text(subtext)],
          )),
      onTap: () {},
    );
  }
}
