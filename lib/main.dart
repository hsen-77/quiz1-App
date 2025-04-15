import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const QuickQuizApp());
}

class QuickQuizApp extends StatelessWidget {
  const QuickQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizScreen(),
    );
}
}
 class QuizScreen extends StatefulWidget{

  const QuizScreen({super.key});

  State<QuizScreen> createState() => _QuizScreenState<QuizScreen>;

 }

 class _QuizScreenState<QuizScreen> extends State<QuizScreen>{
    int correctAnswer = 0;
    int wrongAnswer = 0;
    String message = '❓';
    String theCorrectAnswer = 'Yes';
    String userAnswer='';
  
    void checkAnswer(){
    if(userAnswer == theCorrectAnswer){
      correctAnswer++;
      message = '✔Correct';
    }else{
      wrongAnswer++;
      message= '❌Wrong';                                     
    }
  }                                           
  

  void reset(){
    correctAnswer=0;
    wrongAnswer=0;
    message='?';
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Is Flutter developed by Google'),
              //TextStyle(fontSize: 16),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: checkAnswer , 
              child: Text('A:Yes')),
              const SizedBox(height: 5),
              ElevatedButton(onPressed: checkAnswer, child: Text('B:No')),
              SizedBox(height: 10),
              Text('$message'),
              SizedBox(height: 10),                                           
              Text('Correct: $correctAnswer'),
              SizedBox(height: 5),
              Text('Wrong: $wrongAnswer'),
              SizedBox(height: 10),
              ElevatedButton(onPressed: reset, child: Text('Reset'))                                    
            ],
          ),
        )
      ),
    );
  }
  }
 