import 'package:flutter/material.dart';
import 'package:quize_app_flutter_lession_3/answer_button.dart';
import 'package:quize_app_flutter_lession_3/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key,required this.onSelected});

  final void Function(String answer) onSelected;
  //make a function parameter onSelected for pass take value quize answer selected 

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

int questionIndex=0;


void answerQuestion(String selectedAnswer){
  //this methoid pass a parameter for  selectedAnswer
  widget.onSelected(selectedAnswer);
  //  onSelected function call via widget. and pass parameter
  setState(() {
    questionIndex++;
  });
}




  @override
  Widget build(BuildContext context) {

    final  currentQuestion= questions[questionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [ 
            Text(currentQuestion.text,
              style: GoogleFonts.lato( 
                color: Colors.white,
                fontSize:24
              ), 
            textAlign: TextAlign.center,),
        
        
           const SizedBox(height: 30,),
           //dynamicly generate button
         ...currentQuestion.getSuffle().map((ans){
            return AnswerButton(
              answerText: ans,
               onTap: (){
                answerQuestion(ans);
                //use answerQuestion fucntion pass ans parameter for generate and store question answer
               });
        
          }),
               ////manualy generate button
          //  AnswerButton(answerText: currentQuestion.answer[0], onTap: (){}),
          //    AnswerButton(answerText: currentQuestion.answer[1], onTap: (){}),
          //      AnswerButton(answerText: currentQuestion.answer[2], onTap: (){}),
          //        AnswerButton(answerText: currentQuestion.answer[3], onTap: (){}),
                   
                     
        
         
           ],
        ),
      ),
    );
  }
}