import 'package:credit_chain/loaders/nftLoader.dart';
import 'package:credit_chain/loaders/stake_loader.dart';
import 'package:credit_chain/loaders/willLoader.dart';
import 'package:credit_chain/pages/home/nft.dart';
import 'package:credit_chain/pages/home/stake.dart';
import 'package:credit_chain/pages/home/will.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget listTiler(Icon icon, String texter2, double pay, String title) {
    String payer = pay.toString();
    String adder = (texter2 == 'sent') ? '-' : '+';
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              color: Colors.indigo[900],
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        tileColor: Colors.indigo[100],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: CircleAvatar(
          child: icon,
        ),
        subtitle: Text(
          texter2,
          style: TextStyle(
              color: (texter2 == 'sent')
                  ? Colors.redAccent[700]
                  : Colors.green[900]),
        ),
        trailing: Text(
          adder + payer + " " + "CT",
          style: TextStyle(
              color: Colors.indigo[900],
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }

  double opac1 = 0;
  double opac2 = 0;
  double opac3 = 0;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 700), () {
      setState(() {
        opac1 = 1;
      });
    });
    Future.delayed(Duration(milliseconds: 900), () {
      setState(() {
        opac2 = 1;
      });
    });
    Future.delayed(Duration(milliseconds: 1100), () {
      setState(() {
        opac3 = 1;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = new TextEditingController();
    TextEditingController controller2 = new TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'WALLET',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.blue),
          ),
        ),
        body: Stack(children: [
          Opacity(
            opacity: 0.8,
            child: CircularParticle(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                isRandomColor: false,
                numberOfParticles: 100,
                speedOfParticles: 0.6,
                connectDots: true,
                particleColor: Colors.blue),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 6.0, right: 6.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shadowColor: Colors.blueGrey,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.indigo[400],
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 20),
                            TextButton(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.indigo[400],
                                          content: Text(
                                              '0xfd8e621b3b6de7992fe31a83dc2c16d8ebb378ecb4b8d3a4cc2a2ef2632a1411'),
                                        );
                                      });
                                },
                                child: Text(
                                  'View wallet id',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                            Text(
                              'Balance:',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            AnimatedOpacity(
                              duration: Duration(milliseconds: 700),
                              opacity: opac1,
                              child: Text(
                                '5,896 CT',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.white60),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                            Text(
                              'Gas fee:',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            AnimatedOpacity(
                              duration: Duration(milliseconds: 700),
                              opacity: opac2,
                              child: Text(
                                '0.05 CT',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.white60),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                            Text(
                              'Account status:',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            AnimatedOpacity(
                              duration: Duration(milliseconds: 700),
                              opacity: opac3,
                              child: Text(
                                'active',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.white60),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Card(
                    elevation: 20,
                    shadowColor: Colors.blueGrey,
                    color: Colors.indigo[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WillLoader()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 203, 170, 238),
                                      borderRadius: BorderRadius.circular(10)),
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 9,
                                  child: Center(
                                      child: Image.asset(
                                    'assets/images/contract-icon.png',
                                    scale: 5,
                                  )),
                                ),
                              ),
                              Text(
                                'Will',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Container(
                                            height: 250,
                                            child: Column(children: [
                                              Text(
                                                'Transfer CT(Credit Token)',
                                                style: TextStyle(
                                                    color: Colors.indigo[100],
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          'Enter receiver \'s wallet address',
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .white))),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          'Enter the amount',
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .white))),
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  const snackdemo = SnackBar(
                                                    shape:
                                                        RoundedRectangleBorder(),
                                                    content: Text(
                                                      'Your transaction has completed',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    backgroundColor:
                                                        Colors.indigo,
                                                    elevation: 10,
                                                    behavior: SnackBarBehavior
                                                        .floating,
                                                    margin: EdgeInsets.all(5),
                                                  );
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackdemo);

                                                  // 'showSnackBar' is deprecated and shouldn't be used.
                                                  //Use ScaffoldMessenger.showSnackBar.
                                                  // Scaffold.of(context).showSnackBar(snackdemo);
                                                },
                                                child: const Text('Click Here'),
                                              ),
                                            ]),
                                          ),
                                        );
                                      });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 203, 170, 238),
                                      borderRadius: BorderRadius.circular(10)),
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 9,
                                  child: Center(
                                      child: Icon(
                                    Icons.transform_rounded,
                                    color: Colors.black,
                                  )),
                                ),
                              ),
                              Text(
                                'Transfer',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => StakeLoader())),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 203, 170, 238),
                                      borderRadius: BorderRadius.circular(10)),
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 9,
                                  child: Center(
                                      child: Icon(
                                    Icons.stacked_line_chart_rounded,
                                    color: Colors.black,
                                  )),
                                ),
                              ),
                              Text(
                                'Stake',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NFTLOADER())),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 203, 170, 238),
                                      borderRadius: BorderRadius.circular(10)),
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 9,
                                  child: Center(
                                      child: Icon(
                                    Icons.image_outlined,
                                    color: Colors.black,
                                  )),
                                ),
                              ),
                              Text(
                                'NFT',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Text(
                    'Transaction history:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.7,
                    child: Card(
                      color: Colors.indigo[400],
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            listTiler(Icon(Icons.send), 'sent', 450, 'Sujan'),
                            listTiler(
                                Icon(Icons.send), 'received', 200, 'Rohan'),
                            listTiler(
                                Icon(Icons.send), 'sent', 2000, 'Jaideep'),
                            listTiler(Icon(Icons.send), 'sent', 400, 'Tejas'),
                            listTiler(Icon(Icons.send), 'received', 900,
                                'Sai Krishna'),
                            listTiler(
                                Icon(Icons.send), 'received', 800, 'Yadu'),
                            listTiler(
                                Icon(Icons.send), 'sent', 6700, 'Shashank'),
                            listTiler(Icon(Icons.send), 'sent', 2890, 'Rohan '),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 135, right: 22),
              child: Image.asset(
                'assets/images/credit-chain-high-resolution-logo-color-on-transparent-background.png',
                scale: 28,
              ),
            ),
          )
        ]));
  }
}
