import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  @override
  _ContadorScreenState createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  var quantidade = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contador de Pessoas"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Quantidade de Pessoas"),
              Text(
                "$quantidade",
                style: TextStyle(fontSize: 60),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quantidade++;
                        });
                      },
                      icon: Icon(Icons.plus_one)),
                  SizedBox(
                    width: 40,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quantidade--;
                        });
                      },
                      icon: Icon(Icons.exposure_minus_1)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
