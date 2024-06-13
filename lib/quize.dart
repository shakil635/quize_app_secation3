import 'package:flutter/material.dart';
import 'package:quize_app_flutter_lession_3/data/question.dart';
import 'package:quize_app_flutter_lession_3/question_screen.dart';
import 'package:quize_app_flutter_lession_3/result_screen.dart';
import 'package:quize_app_flutter_lession_3/start_screen.dart';

class Quize extends StatefulWidget {
  const Quize( {super.key});
 

  @override
  State<Quize> createState() {
    return  _QuizeState();
  }
}

class _QuizeState extends State<Quize> {

//var and widget diffirent?
//var activeScreen = const StartScreen();
// widget is a object object has value and value can store variable.

//another solution without initStateMethod
// @override
//   void initState() {
//    activeScreen = StartScreen(switchScreen);
//     super.initState();
//   }


 List<String> selectedAnswers = [];
//create a list selectedanswer keep it.
var activeScreen ="Start_Screen"; 






void switchScreen(){

  setState(() {
    activeScreen = "Question_Screen";

  });
}


void chooseAnswer(String answer){
  selectedAnswers.add(answer);
  //user selected all ans keet it store vai add method
  if(selectedAnswers.length == questions.length){

     // answer button index error remove this logic.when question are finished than user go back quize screen again.
    selectedAnswers =[];
    //but still error again. when user agin try and finished all quize. solve this eorror this line code *selectedAnswers =[];
    //reset every time when true if and remove all storeges
    setState(() {
      activeScreen = "results_Screen";


      //activeScreen store a string value  results_Screen and rebuilt it 
    });
  }
}

  @override
  Widget build(BuildContext context) {
   // final screenWidget =activeScreen =="Start_Screen"?StartScreen(switchScreen):const QuestionScreen();
   //use ternary 

   Widget screenWidget = StartScreen(switchScreen);
   if(activeScreen == "Question_Screen"){
    screenWidget =  QuestionScreen(onSelected:  chooseAnswer);
  } 
    // QuestionScreen take a function parameter and pass it value questionScreen
 


   if(activeScreen =="results_Screen"){
    screenWidget =  ResultsScreen(chooseAnAnswers: selectedAnswers);
   }

   //switch resultScreen when 

    return MaterialApp( 
     home: Scaffold( 
      body: Container(
        decoration: const BoxDecoration( 
          gradient: LinearGradient(
            colors:[Color.fromARGB(255, 109, 109, 2),Color.fromARGB(255, 8, 117, 95),],
            end: Alignment.topLeft,
            begin: Alignment.bottomLeft 
          )
        ),
        child: screenWidget,
     ),
    ));
  }
}


//Render Content Conditionally?
//Lifting State Up?