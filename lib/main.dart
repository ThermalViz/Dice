import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text('Snakes And Ladders'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int left = 1, right = 1;

  int roll = 0;

  bool doneMoving = true;

  int prevPos = 0;

  @override

  int pos = 0;

  List<int> index = [
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0
  ];
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100.0),
          Table(
              defaultColumnWidth: const FixedColumnWidth(40.0),
              border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2),

              children: [
                TableRow( children: [
                  Column(children: [
                    Image.asset('images/${index[34]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[33]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[32]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[31]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[30]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[29]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[28]}.png')
                  ],),

                ]),
                TableRow( children: [
                  Column(children: [
                    Image.asset('images/${index[27]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[26]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[25]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[24]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[23]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[22]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[21]}.png')
                  ],)

                ]),
                TableRow( children: [

                  Column(children: [
                    Image.asset('images/${index[20]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[19]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[18]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[17]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[16]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[15]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[14]}.png')
                  ],),

                ]),
                TableRow( children: [

                  Column(children: [
                    Image.asset('images/${index[13]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[12]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[11]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[10]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[9]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[8]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[7]}.png')
                  ],),

                ]),
                TableRow( children: [

                  Column(children: [
                    Image.asset('images/${index[6]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[5]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[4]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[3]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[2]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[1]}.png')
                  ],),
                  Column(children: [
                    Image.asset('images/${index[0]}.png')
                  ],)

                ])
              ]
          ),
          Center(
            child: Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          ChangeValue();
                        });
                      },

                      child: Image.asset('images/dice$left.png')),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          ChangeValue();
                        });
                      },

                      child: Image.asset('images/dice$right.png')),
                )),
              ],
            ),
          ),
          Center(
            child: Text("Your positioh is : $pos",
              textAlign: TextAlign.center,
            ),
          )
        ],
      )
    );
  }

  void movePlayer() {


    if(pos < 35 && pos > 0 ) {
      index[pos] = 1;

    }


  }

  void ChangeValue() {
    left = 1 + Random().nextInt(6);
    right = 1 + Random().nextInt(6);

    roll = left + right;

    if(pos + roll < 35 && pos + roll > 0 ) {
      prevPos = pos;
      index[prevPos] = 0;
      pos += roll;
      movePlayer();
    }
  }

}

