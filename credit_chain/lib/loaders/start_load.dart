import 'package:credit_chain/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Start_Loader extends StatefulWidget {
  @override
  State<Start_Loader> createState() => _Start_LoaderState();
}

class _Start_LoaderState extends State<Start_Loader> {
  bool selected = false;
  double opac1 = 0;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        selected = !selected;
      });
    });
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        opac1 = 1;
      });
    });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _navigateToHome();
    });
    super.initState();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 4500));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CircularParticle(
            speedOfParticles: 0.4,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            isRandomColor: false,
            connectDots: true,
            numberOfParticles: 100,
            particleColor: Color.fromARGB(255, 24, 124, 206),
          ),
          Center(
              child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1000),
                  opacity: opac1,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 2000),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/credit-chain-high-resolution-logo-color-on-transparent-background.png',
                      ),
                    ),
                    height: selected ? 150 : 80,
                    width: selected ? 150 : 80,
                  )))
        ],
      ),
    );
  }
}
