import 'package:credit_chain/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Will extends StatefulWidget {
  @override
  State<Will> createState() => _WillState();
}

class _WillState extends State<Will> with RestorationMixin {
  List<Dynamic> dyn = List.empty(growable: true);

  late RestorableTextEditingController controller1 =
      new RestorableTextEditingController();
  late RestorableTextEditingController controller2 =
      new RestorableTextEditingController();
  late RestorableTextEditingController controller3 =
      new RestorableTextEditingController();
  static Route<void> navigation(cintext, arguments) =>
      MaterialPageRoute(builder: (context) => Home());

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text('Will'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          CircularParticle(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            speedOfParticles: 0.8,
            isRandomColor: false,
            numberOfParticles: 50,
            connectDots: true,
            particleColor: Colors.blue,
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Card(
                color: Colors.indigo[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: controller1.value,
                          decoration: InputDecoration(
                              labelText: 'Wallet Address',
                              hintText: 'Enter the wallet address of receiver',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: controller2.value,
                          decoration: InputDecoration(
                              labelText: 'Wallet ID',
                              hintText: 'Enter their wallet ID',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: controller3.value,
                          decoration: InputDecoration(
                              labelText: 'Amount',
                              hintText: 'Enter the amount',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width / 3,
                    child: ElevatedButton(
                        onPressed: () {
                          String name = controller1.value.text.trim();
                          String id = controller2.value.text.trim();
                          String amount = controller3.value.text.trim();
                          if (name.isNotEmpty &&
                              id.isNotEmpty &&
                              amount.isNotEmpty) {
                            setState(() {
                              controller1.value.text = '';
                              controller2.value.text = '';
                              controller3.value.text = '';
                              dyn.add(Dynamic(
                                  text1: name, text2: id, text3: amount));
                            });
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.restorablePush(context, navigation);
                        },
                        icon: Icon(Icons.reset_tv_rounded),
                        label: Text(
                          'return to save',
                          style: TextStyle(fontSize: 18),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 27,
              ),
              Container(
                  child: dyn.isEmpty
                      ? Text('No wills ')
                      : Expanded(
                          child: Container(
                            height: 300,
                            child: Card(
                              color: Color.fromARGB(255, 153, 162, 216),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ListView.builder(
                                  padding: EdgeInsets.all(10),
                                  itemCount: dyn.length,
                                  itemBuilder: (context, index) =>
                                      getTile(index)),
                            ),
                          ),
                        )),
            ],
          ),
        ],
      ),
    );
  }

  Widget getTile(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.indigo[400],
        subtitle: Text(
          '\$ ' + dyn[index].text3,
          style:
              TextStyle(color: Colors.indigo[50], fontStyle: FontStyle.italic),
        ),
        leading: CircleAvatar(
            backgroundColor: index % 2 == 0
                ? Colors.deepPurple[900]
                : Color.fromARGB(255, 97, 11, 159),
            child: Center(
              child: Text(
                dyn[index].text1[0],
                style: TextStyle(fontSize: 25),
              ),
            )),
        title: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dyn[index].text1,
                style: TextStyle(
                    color: Colors.blue[100],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
        trailing: IconButton(
            onPressed: () {
              setState(() {
                dyn.removeAt(index);
              });
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            )),
      ),
    );
  }

  @override
  // TODO: implement restorationId
  String? get restorationId => "will_screen";

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(controller1, "wallet_address");
    registerForRestoration(controller2, "wallet_id");
    registerForRestoration(controller3, "amount");
  }
}

class Dynamic extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  Dynamic({required this.text1, required this.text2, required this.text3});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.red,
      leading: Text('hey'),
    );
  }
}
