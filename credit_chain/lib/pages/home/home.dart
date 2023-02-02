import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Home extends StatelessWidget {
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
          adder + '\$' + payer,
          style: TextStyle(
              color: Colors.indigo[900],
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = new TextEditingController();
    TextEditingController controller2 = new TextEditingController();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: Drawer(
            elevation: 16,
            shadowColor: Colors.indigo[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
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
            opacity: 0.7,
            child: CircularParticle(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                isRandomColor: false,
                numberOfParticles: 60,
                speedOfParticles: 0.6,
                connectDots: true,
                particleColor: Colors.blue),
          ),
          SingleChildScrollView(
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
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white)),
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
                                    fontSize: 18, fontWeight: FontWeight.bold),
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
                          Text(
                            '\$ ****',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white60),
                          ),
                        ],
                      ),
                      Text(''),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/credit-chain-high-resolution-logo-color-on-transparent-background.png',
                            scale: 30,
                          ),
                        ),
                      )
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
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 203, 170, 238),
                                  borderRadius: BorderRadius.circular(10)),
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 9,
                              child: Center(
                                  child: Image.asset(
                                'assets/images/contract-icon.png',
                                scale: 5,
                              )),
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
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.indigo[400],
                                    scrollable: true,
                                    content: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  20,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextField(
                                                controller: controller1,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        'Enter destination wallet id',
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20))),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextField(
                                                controller: controller2,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        'Enter amount in \$',
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20))),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 30),
                                              child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text('Commit')),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 203, 170, 238),
                                    borderRadius: BorderRadius.circular(10)),
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 9,
                                child: Center(
                                    child: Icon(
                                  Icons.transform_rounded,
                                  color: Colors.black,
                                )),
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
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 203, 170, 238),
                                  borderRadius: BorderRadius.circular(10)),
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 9,
                              child: Center(
                                  child: Icon(
                                Icons.account_balance_wallet_outlined,
                                color: Colors.black,
                              )),
                            ),
                            Text(
                              'Status',
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
                          listTiler(Icon(Icons.send), 'received', 200, 'Sujan'),
                          listTiler(Icon(Icons.send), 'sent', 2000, 'Sujan'),
                          listTiler(Icon(Icons.send), 'sent', 400, 'Sujan'),
                          listTiler(Icon(Icons.send), 'received', 900, 'Sujan'),
                          listTiler(Icon(Icons.send), 'received', 800, 'Sujan'),
                          listTiler(Icon(Icons.send), 'sent', 6700, 'Sujan'),
                          listTiler(Icon(Icons.send), 'sent', 2890, 'Sujan'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
