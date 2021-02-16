import 'dart:ui';
import '../widgets/colorpicker.dart';
import '../widgets/imagewidget.dart';
import '../widgets/scenepicker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  final String header1;
  final String header2;
  final String subtext;
  Details(this.header1, this.subtext, this.header2);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // double _animationheight = 0;
  // double _animationwidth = 0;
  Color bulbColor = Colors.yellow;
  double _currentSliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(
        onTap: null,
        // showUnselectedLabels: false,
        unselectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/bulb.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/Icon feather-home.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/if-settings.png')),
            label: '',
          ),
        ],
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.blue[700],
      body: Stack(overflow: Overflow.visible, children: [
        Column(
          children: [
            AnimatedContainer(
              // height: _animationheight,
              // width: _animationwidth,
              duration: Duration(seconds: 1),
              child: Container(
                // TODO: Add animation
                color: Colors.blue[700],
                height: MediaQuery.of(context).size.height / 2.75,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 45,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Image.asset(
                                        'assets/Icon ionic-md-arrow-round-back.png'),
                                  ),
                                ),
                                Text(widget.header1,
                                    style: GoogleFonts.roboto(
                                        fontSize: 34,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            widget.header2 == ''
                                ? SizedBox(height: 0)
                                : Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Room',
                                        style: GoogleFonts.roboto(
                                            fontSize: 34,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                            Text(widget.subtext,
                                style: GoogleFonts.roboto(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow))
                          ],
                        ),
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset('assets/Group 38.png'),
                            Container(
                                height: 10,
                                width: 25,
                                color: Colors.transparent,
                                child: new Container(
                                  decoration: new BoxDecoration(
                                    color: bulbColor,
                                    borderRadius: new BorderRadius.only(
                                        bottomLeft: Radius.circular(40.0),
                                        bottomRight: Radius.circular(40.0)),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Padding(
                      // TODO: Animate -- This is the scroll view
                      padding: EdgeInsets.only(left: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ButtonTheme(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              height: 50,
                              buttonColor: Colors.white,
                              child: RaisedButton.icon(
                                  onPressed: () {},
                                  icon: ImageWidget('assets/surface1.png'),
                                  label: Text('Main Light',
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ButtonTheme(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              height: 50,
                              buttonColor: Colors.blue[800],
                              child: RaisedButton.icon(
                                  onPressed: () {},
                                  icon: ImageWidget(
                                      'assets/furniture-and-household.png'),
                                  label: Text('Desk lights',
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ButtonTheme(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              height: 50,
                              buttonColor: Colors.white,
                              child: RaisedButton.icon(
                                  onPressed: () {},
                                  icon: ImageWidget('assets/surface1.png'),
                                  label: Text('Bedroom',
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // FloatingActionButton(onPressed: null),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 2.75 -
                    kBottomNavigationBarHeight,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('Intensity',
                              style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800])),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/solution2.png'),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.yellow,
                                inactiveTrackColor: Colors.yellow,
                                trackShape: RectangularSliderTrackShape(),
                                trackHeight: 4.0,
                                thumbColor: Colors.white,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 28.0),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.25,
                                child: Slider(
                                  min: 0,
                                  max: 100,
                                  divisions: 5,
                                  value: _currentSliderValue,
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Image.asset('assets/solution.png'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('Colors',
                              style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800])),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ColorPicker(Colors.redAccent[100], null, () {
                          setState(() {
                            bulbColor = Colors.redAccent[100];
                          });
                        }),
                        ColorPicker(Colors.greenAccent[100], null, () {
                          setState(() {
                            bulbColor = Colors.greenAccent[100];
                          });
                        }),
                        ColorPicker(Colors.blueAccent[100], null, () {
                          setState(() {
                            bulbColor = Colors.blueAccent[100];
                          });
                        }),
                        ColorPicker(Colors.indigoAccent[100], null, () {
                          setState(() {
                            bulbColor = Colors.indigoAccent[100];
                          });
                        }),
                        ColorPicker(Colors.purpleAccent[100], null, () {
                          setState(() {
                            bulbColor = Colors.purpleAccent[100];
                          });
                        }),
                        ColorPicker(Colors.yellowAccent[100], null, () {
                          setState(() {
                            bulbColor = Colors.yellow[100];
                          });
                        }),
                        ColorPicker(
                            Colors.white, Image.asset('assets/+.png'), () {})
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('Scenes',
                              style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800])),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ScenePicker(
                                Colors.redAccent[100],
                                Text('Birthday',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))),
                            ScenePicker(
                                Colors.indigoAccent[100],
                                Text('Party',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ScenePicker(
                                Colors.blueAccent[100],
                                Text('Relax',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))),
                            ScenePicker(
                                Colors.greenAccent[100],
                                Text('Fun',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)))),

            // Container(
            //     height: MediaQuery.of(context).size.height -
            //         MediaQuery.of(context).size.height / 2.75 -
            //         kBottomNavigationBarHeight,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         border: Border.all(color: Colors.white),
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(20),
            //             topRight: Radius.circular(20)))),
          ],
        ),
        Positioned(
          // right: 40,
          right: 20,
          top: MediaQuery.of(context).size.height / 4 +
              kFloatingActionButtonMargin * 5,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            onPressed: null,
            child: Image.asset('assets/Icon awesome-power-off.png'),
          ),
        ),
      ]),
    );
  }
}
