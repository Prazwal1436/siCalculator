import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Simple Intrest Calculator",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p = "", t = "", r = "", si = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Intrest"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: const Color.fromARGB(255, 230, 230, 230)),
        child: ListView(
          children: [
            SizedBox(height: 10),
            TextField(
              onChanged: (value) => setState(() {
                p = value;
              }),
              decoration: InputDecoration(
                  hintText: "Enter Principle",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ))),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) => setState(() {
                t = value;
              }),
              decoration: InputDecoration(
                  hintText: "Enter Time",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ))),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) => setState(() {
                r = value;
              }),
              decoration: InputDecoration(
                  hintText: "Enter Rate",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ))),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                setState(() {
                  si = (double.parse(p) *
                          double.parse(t) *
                          double.parse(r) /
                          100)
                      .toString();
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.redAccent)),
              height: 50,
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.red,
            ),
            SizedBox(height: 10),
            Center(
                child: Text(
              "The Simple Intrest is " + si,
              style: TextStyle(fontSize: 20),
            ))
          ],
        ),
      ),
    );
  }
}
