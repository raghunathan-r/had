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


