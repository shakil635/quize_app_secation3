import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuize,{super.key});

  final void Function() startQuize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( 
        mainAxisSize: MainAxisSize.min,
        children: [ 
              Image.asset("assets/images/quiz-logo.png",
              width: 300,
              color: const Color.fromRGBO(255, 253, 253, 1),
               // dui vabe  visible r invisible kora jay ak Opacity r ak widget er colors babohar kore
              //2. color babohar kore
              
              ),
           //1. Opacity babohar kore 
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset("assets/images/quiz-logo.png",width: 300,)),
       
          const SizedBox(height: 80,),

          Text("Learn Flutter the fun way!",
        style: GoogleFonts.lato(color:Colors.white,fontSize:24)),
        const SizedBox(height: 30,),

        OutlinedButton.icon(onPressed: startQuize,
        style: OutlinedButton.styleFrom( 
          foregroundColor: Colors.white
        ),
        icon: const Icon(Icons.arrow_right_alt),
         label: const Text("Start Quize"))
        ],
      ));
  }
}