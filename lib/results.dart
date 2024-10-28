import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  ResultScreen(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    final Size=MediaQuery.of(context).size;
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: Size.height*0.2),
            Text('RESULTS',style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontSize: 40),),
            SizedBox(height: Size.height*0.25,),
            Text("Your Score: $score / $totalQuestions", style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,)),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text("Restart Quiz"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                  primary: Color(0xff946c33),
                ),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
