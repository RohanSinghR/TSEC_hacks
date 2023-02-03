import 'package:credit_chain/pages/home/nft.dart';
import 'package:credit_chain/pages/home/stake.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:particles_flutter/particles_flutter.dart';

import '../pages/home/home.dart';
import '../pages/home/will.dart';

class NFTLOADER extends StatefulWidget {
  @override
  State<NFTLOADER> createState() => NFTLOADERState();
}

class NFTLOADERState extends State<NFTLOADER> {
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;
  double opac2 = 0;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        selected1 = !selected1;
      });
    });
    Future.delayed(Duration(milliseconds: 1400), () {
      setState(() {
        selected1 = !selected1;
      });
    });

    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        selected2 = !selected2;
      });
    });
    Future.delayed(Duration(milliseconds: 1700), () {
      setState(() {
        selected2 = !selected2;
      });
    });
    Future.delayed(Duration(milliseconds: 1100), () {
      setState(() {
        selected3 = !selected3;
      });
    });
    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        selected3 = !selected3;
      });
    });
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        opac2 = 1;
      });
    });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _navigateToHome();
    });

    super.initState();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2700));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => NFT()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.28,
            child: CircularParticle(
              connectDots: true,
              speedOfParticles: 0.7,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              isRandomColor: false,
              awayRadius: 20,
              numberOfParticles: 80,
              particleColor: Colors.blue,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  height: 70,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedAlign(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue[500],
                            ),
                            height: 20,
                            width: 20,
                          ),
                          alignment: selected1
                              ? Alignment.bottomCenter
                              : Alignment.center,
                          duration: Duration(milliseconds: 100)),
                      SizedBox(
                        width: 20,
                      ),
                      AnimatedAlign(
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue[500],
                            ),
                          ),
                          alignment: selected2
                              ? Alignment.topCenter
                              : Alignment.center,
                          duration: Duration(milliseconds: 100)),
                      SizedBox(
                        width: 20,
                      ),
                      AnimatedAlign(
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue[500],
                            ),
                          ),
                          alignment: selected3
                              ? Alignment.bottomCenter
                              : Alignment.center,
                          duration: Duration(milliseconds: 100)),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Text(
                  'Loading...',
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.lightBlue[100]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
