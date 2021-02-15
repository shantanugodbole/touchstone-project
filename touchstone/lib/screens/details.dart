import 'dart:ui';

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

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

class ColorPicker extends StatelessWidget {
  final Color color;
  final Widget icon;
  ColorPicker(this.color, this.icon);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: color,
        child: icon,
      ),
    );
  }
}

class ScenePicker extends StatelessWidget {
  final Widget label;
  final Color color;
  ScenePicker(this.color, this.label);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ButtonTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        height: 75,
        child: RaisedButton.icon(
          onPressed: null,
          icon: ImageWidget('assets/solution2.png'),
          label: label,
          color: color,
        ),
      ),
    );
  }
}

class _DetailsState extends State<Details> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/bulb.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/house.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/if-settings.png')),
            label: '',
          ),
        ],
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.blue,
      body: Stack(overflow: Overflow.visible, children: [
        Column(
          children: [
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height / 2.75,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                  'assets/Icon ionic-md-arrow-round-back.png'),
                              Text('Bed \n Room'),
                            ],
                          ),
                          Text('4 lights')
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/Group 38.png'),
                          Container(
                              height: 10,
                              width: 25,
                              color: Colors.transparent,
                              child: new Container(
                                decoration: new BoxDecoration(
                                  color: Colors.yellow,
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
                    height: 80,
                  ),
                  SingleChildScrollView(
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
                              icon: ImageWidget('assets/bulb.png'),
                              label: Text('Main Light')),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ButtonTheme(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          buttonColor: Colors.blue,
                          child: RaisedButton.icon(
                              onPressed: () {},
                              icon: ImageWidget(
                                  'assets/furniture-and-household.png'),
                              label: Text('Desk Lights')),
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
                              icon: ImageWidget('assets/bulb.png'),
                              label: Text('Bedroom')),
                        )
                      ],
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
                    Text('Intensity'),
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
                    Text('Colors'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ColorPicker(Colors.redAccent, null),
                        ColorPicker(Colors.greenAccent, null),
                        ColorPicker(Colors.blueAccent, null),
                        ColorPicker(Colors.purpleAccent, null),
                        ColorPicker(Colors.indigoAccent, null),
                        ColorPicker(Colors.brown, null),
                        ColorPicker(Colors.white, Image.asset('assets/+.png'))
                      ],
                    ),
                    Text('Scenes'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ScenePicker(Colors.redAccent, Text('Birthday')),
                            ScenePicker(Colors.indigoAccent, Text('Party'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ScenePicker(Colors.blueAccent, Text('Relax')),
                            ScenePicker(Colors.greenAccent, Text('Fun'))
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
