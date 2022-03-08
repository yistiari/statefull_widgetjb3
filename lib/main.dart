import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController text1 = TextEditingController();
  int _counter = 0;

  konversi() {
    setState(() {
      _counter++;
    });
  }

  var listItem = ["Kelvin", "Reamur"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Konversi Suhu')),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            children: [
              TextField(
                controller: text1,
                decoration: InputDecoration(
                    labelText: "Celcius", hintText: "Masukkan suhu"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: DropdownButton(
                    value: "Fahrenheit",
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        child: Text("Kelvin"),
                        value: "Kelvin",
                      ),
                      DropdownMenuItem(
                        child: Text("Reamore"),
                        value: "Reamore",
                      ),
                      DropdownMenuItem(
                        child: Text("Fahrenheit"),
                        value: "Fahrenheit",
                      ),
                    ],
                    onChanged: (value) {}),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hasil",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "Hasil 2 ",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          konversi();
                          text1.clear();
                        },
                        child: Text(
                          "Konversi",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Riwayat Konversi ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
