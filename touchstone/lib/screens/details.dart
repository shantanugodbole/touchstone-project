import 'dart:ui';
import '../widgets/colorpicker.dart';
import '../widgets/imagewidget.dart';
import '../widgets/scenepicker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
            Container(
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
                              Text('Bed',
                                  style: GoogleFonts.roboto(
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text('Room',
                                style: GoogleFonts.roboto(
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          Text('4 lights',
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
            // Positioned(
            //   child: FloatingActionButton(
            //     backgroundColor: Colors.white,
            //     onPressed: null,
            //     child: Image.asset('assets/Icon awesome-power-off.png'),
            //   ),
            // ),
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
                                overlayColor: Colors.red.withAlpha(32),
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
                        ColorPicker(Colors.redAccent, null, () {
                          setState(() {
                            bulbColor = Colors.redAccent;
                          });
                        }),
                        ColorPicker(Colors.greenAccent, null, () {
                          setState(() {
                            bulbColor = Colors.greenAccent;
                          });
                        }),
                        ColorPicker(Colors.blueAccent, null, () {
                          setState(() {
                            bulbColor = Colors.blueAccent;
                          });
                        }),
                        ColorPicker(Colors.indigoAccent, null, () {
                          setState(() {
                            bulbColor = Colors.indigoAccent;
                          });
                        }),
                        ColorPicker(Colors.purpleAccent, null, () {
                          setState(() {
                            bulbColor = Colors.purpleAccent;
                          });
                        }),
                        ColorPicker(Colors.brown, null, () {
                          setState(() {
                            bulbColor = Colors.brown;
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
                                Colors.redAccent,
                                Text('Birthday',
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))),
                            ScenePicker(
                                Colors.indigoAccent,
                                Text('Party',
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
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
                                Colors.blueAccent,
                                Text('Relax',
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))),
                            ScenePicker(
                                Colors.greenAccent,
                                Text('Fun',
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
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
      ]),
    );
  }
}
