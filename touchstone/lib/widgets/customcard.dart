import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          width: MediaQuery.of(context).size.width / 2.75,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[100],
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
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
                padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
                child: Text(header,
                    style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Text(subtext,
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[700])),
              )
            ],
          )),
      onTap: () {
        var strings = header.split(" ");
        strings.length == 1
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(strings[0], subtext, '')))
            : Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Details(strings[0], subtext, strings[1])));
      },
    );
  }
}
