import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Showdata extends StatefulWidget {
  @override
  _ShowdataState createState() {
    return _ShowdataState();
  }
}

class _ShowdataState extends State<Showdata> {
  late SharedPreferences prefs;
  TextEditingController controller = new TextEditingController();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          name,
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(219, 30, 65, 224),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    child: Text("Show Data"),
                    onPressed: () {
                      showdata();
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }

  showdata() async {
    prefs = await SharedPreferences.getInstance();
    name = prefs.getString("userinput")!;
    setState(() {});
  }
}
