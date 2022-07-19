import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Savedata extends StatefulWidget {
  @override
  _SavedataState createState() {
    return _SavedataState();
  }
}

class _SavedataState extends State<Savedata> {
  late SharedPreferences prefs;
  TextEditingController controller = new TextEditingController();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: SizedBox(
                    width: 500,
                    height: 50,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(219, 30, 65, 224),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    child: Text("Save Data"),
                    onPressed: () {
                      savedata();
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }

  savedata() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString("userinput", controller.text.toString());
  }
}
