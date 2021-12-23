import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "checkbox",
    home: Scaffold(
      appBar: AppBar(
        title: Text("cheakbox"),
      ),
      body: Myapp(),
    ),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool? _cvalue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: Transform.scale(
          scale: 3,

          child: Checkbox(
            value: _cvalue,
            onChanged: (staus) {
              print(staus);
              setState(() {
                _cvalue = staus;
              });
            },
            activeColor: Colors.red,
            checkColor: Colors.green,
            tristate: true,
          ),
        ),
      ),
    );
  }
}
