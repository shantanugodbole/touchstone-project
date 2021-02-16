import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/customcard.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final assetimage = '../../assets/user.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(
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
      body: Column(children: [
        Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.blue[700],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'Control\nPanel',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          )),
                      Image.asset(
                        'assets/user.png',
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                )), // Blue Part
            Container(
                decoration: BoxDecoration(
                    color: Color(0xFFeefbfb),
                    border: Border.all(color: Color(0xFFeefbfb)),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                height: (MediaQuery.of(context).size.height * 3) / 4 -
                    kBottomNavigationBarHeight,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'All Rooms',
                            style: GoogleFonts.roboto(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[
                                    800]),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard("Bed Room", "4 lights", 'assets/bed.png'),
                        CustomCard(
                            "Living Room", "2 lights", 'assets/room.png'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard("Kitchen", "5 lights", 'assets/kitchen.png'),
                        CustomCard(
                            "Bathroom", "1 light", 'assets/bathtube.png'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard("Outdoor", "5 lights", 'assets/house.png'),
                        CustomCard("Balcony", "2 lights", 'assets/balcony.png'),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ]),
    );
  }
}
