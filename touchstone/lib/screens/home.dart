import 'package:flutter/material.dart';
import '../widgets/customcard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Title 1')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Title 1')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('Title 1')),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.blue,
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text('Control Panel')),
                  // Image.asset(name)
                ],
              ),
            ), // Blue Part
            // TODO : Give White container only top circular border
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard("Hello", "World"),
                        CustomCard("Hello", "World"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard("Hello", "World"),
                        CustomCard("Hello", "World"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard("Hello", "World"),
                        CustomCard("Hello", "World"),
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
