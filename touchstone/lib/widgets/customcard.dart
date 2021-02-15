import 'package:flutter/material.dart';
import 'package:touchstone/screens/details.dart';

class CustomCard extends StatelessWidget {
  final String header;
  final String subtext;
  final String displayImage;
  // final Image image;
  CustomCard(this.header, this.subtext, this.displayImage);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: MediaQuery.of(context).size.width / 3,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Image.asset(displayImage)),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Text(header),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Text(subtext),
              )
            ],
          )),
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Details()),
        // );
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
    );
  }
}
