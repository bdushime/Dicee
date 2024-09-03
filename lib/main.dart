import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dicee());
}

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int rightNumber=1;
  int leftNumber=1;
  void changeNumber(){
    setState(() {
       rightNumber=Random().nextInt(6)+1;
       leftNumber=Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple.shade200,
          title: Text(
            'Dicee',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded( 
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      changeNumber();
                    },
                    child: Image(
                      image: AssetImage('images/dice$leftNumber.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeNumber();
                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$rightNumber.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
