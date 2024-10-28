import 'package:flutter/material.dart';
import 'package:quizapp/quiz1.dart';
class Questions{
  final String question;
  final List<String> options;
  final int correctanswerindex;
  const Questions({
    required this.question,
    required this.options,
    required this.correctanswerindex,
});
}
const List<Questions> questions=[
  Questions(
      question: '1.What is Capital of France',
      options: [' a) Madrid',' b) Paris',' c) Berlin',' d) Rome'],
      correctanswerindex: 1,
  ),
  Questions(
      question: '2. Who sang the title song for the latest Bond film, No Time to Die?',
      options: ['a) Adele','b)Sam Smith','c)Billie Ellish','d)Elvis Presley'],
      correctanswerindex: 2,
  ),
  Questions(
      question: '3.What company makes the Xperia model of smartphone?',
      options: ['a)Samsung',
  'b) Sony',
  'c)Nokia','d)Apple '],
      correctanswerindex: 1,
  ),
  Questions(
      question: '4. Where was the first example of paper money used?',
      options: ['a)China','b)Turkey','c)Greece','d)India'],
    correctanswerindex: 0,
  ),
  Questions(
      question: ' Which app has the most total users?',
      options: ['a) TikTok','b) Snapchat','c) Instagram','d)Whatsapp'

], correctanswerindex: 2,
  )
];