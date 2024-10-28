import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/results.dart';
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  void _nextQuestion(int selectedOption) {
    if (selectedOption == questions[_currentQuestionIndex].correctanswerindex) {
      _score++;
    }
    setState(() {
      if (_currentQuestionIndex < questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(_score, questions.length),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              questions[_currentQuestionIndex].question,
              style: TextStyle(fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          ...questions[_currentQuestionIndex].options.map((option) {
            int optionIndex = questions[_currentQuestionIndex].options.indexOf(option);
            return  Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () => _nextQuestion(optionIndex),
                  child: Text(option,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                 style: ElevatedButton.styleFrom(
                   primary: Color(0xffc5c6c7),
                   padding: EdgeInsets.symmetric(vertical: 20,horizontal: 120),
                 ),

              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
