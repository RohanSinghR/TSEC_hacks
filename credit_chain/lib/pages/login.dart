import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

import '../loaders/loginLoader.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double opac1 = 0;
  double opac2 = 0;

  TextEditingController controller1 = new TextEditingController();

  TextEditingController controller2 = new TextEditingController();
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        opac1 = 1.0;
      });
    });
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        opac2 = 1.0;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedOpacity(
                opacity: opac2,
                duration: Duration(milliseconds: 1200),
                child: Opacity(
                  opacity: 0.4,
                  child: CircularParticle(
                    height: 320,
                    particleColor: Colors.lightBlue,
                    hoverColor: Colors.red,
                    hoverRadius: 20,
                    speedOfParticles: 0.5,
                    width: 400,
                    connectDots: true,
                    isRandomColor: false,
                    numberOfParticles: 50,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 5.5,
              ),
              Center(
                child: AnimatedOpacity(
                    opacity: opac1,
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      'Credit Chain',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 149, 166, 235)),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.16,
                  child: TextField(
                    controller: controller1,
                    decoration: InputDecoration(
                        helperText: 'Wallet address',
                        hintText: 'Enter wallet address',
                        errorText: controller1.text.isEmpty
                            ? 'Please enter a valid wallet address'
                            : '',
                        errorStyle: TextStyle(color: Colors.red),
                        alignLabelWithHint: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 48,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.16,
                  child: TextFormField(
                    obscureText: true,
                    enableIMEPersonalizedLearning: true,
                    enableSuggestions: true,
                    controller: controller2,
                    decoration: InputDecoration(
                        hintText: 'Enter wallet key',
                        hintMaxLines: 1,
                        errorText: controller2.text.isEmpty
                            ? 'Please enter a valid wallet key'
                            : '',
                        errorStyle: TextStyle(color: Colors.red),
                        alignLabelWithHint: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    if (controller1.text.isEmpty) {
                      return;
                    } else if (controller2.text.isEmpty) {
                      return;
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginLoader()));
                    }
                  },
                  child: Text(
                    'Validate',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 2.7,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Text(
                'Supported wallets:',
                style: TextStyle(
                    color: Color.fromARGB(255, 149, 166, 235),
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/coinbase-inc-seeklogo.com.png',
                    scale: 8,
                  ),
                  Image.asset(
                    'assets/images/MetaMask_Fox.png',
                    scale: 8,
                  ),
                  Image.asset(
                    'assets/images/binance-logo.png',
                    scale: 5,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
