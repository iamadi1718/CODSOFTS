import 'package:flutter/material.dart';
import 'package:quizapp/quiz1.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    final Size=MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: Size.height*0.08,),

            Align(
              alignment: Alignment.center,
              child: Text('Quizzes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(


                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Find a Quiz',
                  prefixIcon: Icon(Icons.search),
                  fillColor: Color(0xffe8e9fb),
                  filled: true,
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text('Pick a Category',style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('General Knowledge',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),),
                ),
                SizedBox(width: Size.width*0.39,),
                GestureDetector(

                    child: Icon(Icons.arrow_forward)),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Vocabulary',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),),
                ),
                SizedBox(width: Size.width*0.58,),
                GestureDetector(

                    child: Icon(Icons.arrow_forward)),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Grammar',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),),
                ),
                SizedBox(width: Size.width*0.62,),
                GestureDetector(

                    child: Icon(Icons.arrow_forward)),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Travel',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),),
                ),
                SizedBox(width: Size.width*0.69,),
                GestureDetector(

                    child: Icon(Icons.arrow_forward)),

              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text('Start a New Quiz',style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Random Quiz',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),),
                ),
                SizedBox(width: Size.width*0.508,),
                GestureDetector(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuizScreen() ),
                              (route) => false
                      );
                    },

                    child: Icon(Icons.arrow_forward)),

              ],
            ),


          ],
        ),
      ),
    );
  }
}