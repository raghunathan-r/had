// ====> Experiement 1 : Single Child Safearea and Scaffold

// // WITHOUT SAFE AREA
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Text(
//       'Text without safe area',
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         fontSize: 40,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ));
// }

// ---

// WITH SAFEAREA
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: SafeArea(
//       child: Text(
//         'Text without safe area',
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 40,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//   ));
// }

// ---

// // APP WITH SCAFFOLD
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("App with scaffold"),
//       ),
//       body: Center(
//         child: Text(
//             "The text in the center of body in the scaffold"
//         ),
//       ),
//     ),
//   ));
// }

// ---

// MULTI CHILD WIDGETS

// Exercise 1. Row widget main axis alignment

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("Row Widgets"),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           FirstChild(),
//           SecondChild(),
//           ThirdChild(),
//         ],
//       ),
//     ),
//   ));
// }
//
// class FirstChild extends StatelessWidget {
//   const FirstChild({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: Colors.red,
//     );
//   }
// }
//
// class SecondChild extends StatelessWidget {
//   const SecondChild({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: Colors.green,
//     );
//   }
// }
//
// class ThirdChild extends StatelessWidget {
//   const ThirdChild({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: Colors.blue,
//     );
//   }
// }


// Exercise - 2. Columns and row main and cross axis alignment

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Row Widgets"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [SecondChild()]),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [ThirdChild()]),
        ],
      ),
    ),
  ));
}

class FirstChild extends StatelessWidget {
  const FirstChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    );
  }
}

class SecondChild extends StatelessWidget {
  const SecondChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
    );
  }
}

class ThirdChild extends StatelessWidget {
  const ThirdChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.blue,
    );
  }
}

// Expercise - 3 - The NEW ONE HE GAVE

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Row Widgets"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [SecondChild()]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Row(mainAxisAlignment: MainAxisAlignment.start, children: [ThirdChild()]),
                // Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
                ThirdChild(),
                FirstChild(),
              ]),

        ],
      ),
    ),
  ));
}

class FirstChild extends StatelessWidget {
  const FirstChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    );
  }
}

class SecondChild extends StatelessWidget {
  const SecondChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
    );
  }
}

class ThirdChild extends StatelessWidget {
  const ThirdChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.blue,
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("App with scaffold"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(90.0),
//         color: Colors.lightBlueAccent,
//         child: Text(
//             "The text in the center of body in the scaffold"
//         ),
//       ),
//     ),
//   ));
// }

// Exercise - 2. Columns and row main and cross axis alignment

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Row Widgets"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [FirstChild()]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [SecondChild()]),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [ThirdChild()]),
        ],
      ),
    ),
  ));
}

class FirstChild extends StatelessWidget {
  const FirstChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    );
  }
}

class SecondChild extends StatelessWidget {
  const SecondChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
    );
  }
}

class ThirdChild extends StatelessWidget {
  const ThirdChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.blue,
    );
  }
}


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("App with scaffold"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(90.0),
//         color: Colors.lightBlueAccent,
//         child: Text(
//             "The text in the center of body in the scaffold"
//         ),
//       ),
//     ),
//   ));
// }



// ====> Q2. QUIZE APP [ YAML

  assets:
  - images/

// ]

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Dice App"),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int left = 1, right = 1;
  void changeface(){
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent
                ),
                child: Image.asset('images/dice$left.png'),
                onPressed: (){
                  changeface();
                },
              ),
            ),
            Expanded(
                flex: 1,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: Image.asset('images/dice$right.png'),
                  onPressed: () {
                    changeface();
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}




// ====> Q3. Xylophone App [ YAML

dependencies:
  flutter:
    sdk: flutter
  audioplayers: ^0.20.1

  assets:
    - assets/

// ]

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Xylophone App'),),
      body: XyloPage(),
    ),
  ));
}

class XyloPage extends StatefulWidget {
  const XyloPage({Key? key}) : super(key: key);

  @override
  State<XyloPage> createState() => _XyloPageState();
}

class _XyloPageState extends State<XyloPage> {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play("/assets/note$noteNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lime,
            ),
            onPressed: () {
              playSound(1);
            },
            child: Text('First'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
            ),
            onPressed: () {
              playSound(2);
            },
            child: Text('Second'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.indigo,
            ),
            onPressed: () {
              playSound(3);
            },
            child: Text('Third'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              playSound(4);
            },
            child: Text('Fourth'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
            ),
            onPressed: () {
              playSound(5);
            },
            child: Text('Fifth'),
          )),

          Expanded(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.cyanAccent,
            ),
            onPressed: () {
              playSound(6);
            },
            child: Text('Sixth'),
          )),
        ],
      ),
    );
  }
}



// ====> Q4. QUIZE APP [ NO NEED YAML ]

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Quiz App"),),
      body: QuizPage(),
    ),
  ));
}

// Class for the question object that hold the question and answer and a constructor
class Question{
  final String question;
  final bool answer;

  Question({required this.question, required this.answer});
}

class Questions{
  List<Question> questionBank = [
    Question(question: "1 + 1 = 2", answer: true),
    Question(question: "1 + 1 = 3", answer: false),
    Question(question: "1 + 4 = 5", answer: true),
    Question(question: "1 + 5 = 6", answer: true),
    Question(question: "1 + 6 = 7", answer: true),
    Question(question: "1 + 1 = 0", answer: false),
    Question(question: "1 + 5 = 2", answer: false),
  ];
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionNumber = 0;
  int currentScore = 0;

  Questions questions = Questions();

  void updateQuestionNumber() {
    setState(() {
      questionNumber++;
      print("$questionNumber");
    });
  }

  void updateCurrentScore(bool choice, int questionNumber){
    if(questions.questionBank.length == questionNumber){
      print("End of questions");
    } else {
      if(questions.questionBank[questionNumber].answer == choice){
        setState(() {
          currentScore++;
        });
      }
    }
  }

  bool checkQuestionNumber(int questionNumber){
    return questionNumber < questions.questionBank.length ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            checkQuestionNumber(questionNumber) ? questions.questionBank[questionNumber].question.toString() : "End",
            style: TextStyle( fontSize: 40.0 ),
          ),
        ),

        // SizedBox(
        //   height: 20.0,
        // ),

        if(checkQuestionNumber(questionNumber))
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if(questionNumber == questions.questionBank.length) {
                    print("End of questiosn");
                  } else{
                    updateCurrentScore(true, questionNumber);
                    updateQuestionNumber();
                  }
                });
              },
              child: Text("True"),
          ),

        if(checkQuestionNumber(questionNumber))
          ElevatedButton(
            onPressed: () {
              setState(() {
                if(questionNumber == questions.questionBank.length) {
                  print("End of questiosn");
                } else{
                  updateCurrentScore(false, questionNumber);
                  updateQuestionNumber();
                }
              });
            },
            child: Text("False"),
          ),

        Container(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Text("Current score", style: TextStyle(fontSize: 40.0,),),
          ),
        ),

        Container(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Text("$currentScore", style: TextStyle(fontSize: 40.0,),),
          ),
        ),

      ],
    );
  }
}


