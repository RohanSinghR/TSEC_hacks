import "package:flutter/material.dart";
import 'package:particles_flutter/particles_flutter.dart';

class AnimatorGraph extends StatefulWidget {
  @override
  State<AnimatorGraph> createState() => _AnimatorGraphState();
}

class _AnimatorGraphState extends State<AnimatorGraph> {
  bool selected = false;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        selected = !selected;
      });
    });
    super.initState();
  }

  Widget boxer(Color color, double height1, double height2, double height3,
      double height4, double height5, double height6, double height7) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 1,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.grey[850],
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 15,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
                AnimatedContainer(
                  curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  height: selected
                      ? height1
                      : MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 15,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
                AnimatedContainer(
                  curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  height: selected
                      ? height2
                      : MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 15,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
                AnimatedContainer(
                  curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  height: selected
                      ? height3
                      : MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 15,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
                AnimatedContainer(
                  curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  height: selected
                      ? height4
                      : MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 15,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
                AnimatedContainer(
                  curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  height: selected
                      ? height5
                      : MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 15,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
                AnimatedContainer(
                  curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  height: selected
                      ? height6
                      : MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 15,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
                AnimatedContainer(
                  curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  height: selected
                      ? height7
                      : MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 16,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('STAKE'),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            CircularParticle(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              isRandomColor: false,
              connectDots: true,
              numberOfParticles: 100,
              particleColor: Colors.blue,
              speedOfParticles: 0.4,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Card(
                      elevation: 15,
                      shadowColor: Colors.blueGrey[100],
                      color: Colors.indigo[400],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 7,
                              ),
                              Text(
                                "Stake:",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blue[100],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 90),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 35,
                                      color: Colors.yellow[900],
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          40,
                                    ),
                                    Text(
                                      '48 CT',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.blue[100],
                                          fontSize: 28),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 11,
                              ),
                              Text(
                                "Gas fee:",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blue[100],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 59,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 81),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 35,
                                      color: Colors.yellow[900],
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          40,
                                    ),
                                    Text(
                                      '0.01 CT',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.blue[100],
                                          fontSize: 28),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Total stakes:",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blue[100],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 35,
                                      color: Colors.yellow[900],
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          40,
                                    ),
                                    Text(
                                      '1.8 CT',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.blue[100],
                                          fontSize: 28),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Days->',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  boxer(Colors.red, 90, 70, 40, 80, 30, 58, 5),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height / 100,
                  // ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '60',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '65',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '86',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '65',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '90',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '81',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '98',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 5.7,
                    child: Card(
                      color: Colors.indigo[400],
                      elevation: 5,
                      shadowColor: Colors.blueGrey[100],
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Recent stake rewards:",
                              style: TextStyle(
                                  color: Colors.blue[100],
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              "+ 0.4CT",
                              style: TextStyle(
                                  color: Colors.blue[100],
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
