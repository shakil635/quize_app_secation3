
// import 'package:flutter/material.dart';


// class WellComeScreen extends StatefulWidget {
//   const WellComeScreen(this.color1,this.color2,{super.key});
//   final Color color1;
//   final Color color2;
//   //...

//   @override
//   State<WellComeScreen> createState() => _WellComeScreenState();
// }

// class _WellComeScreenState extends State<WellComeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//       body:Container(
//         decoration: BoxDecoration( 
//           gradient: LinearGradient(
//             colors: [widget.color1,widget.color2],
//             end: Alignment.centerLeft,
//             begin: Alignment.topLeft
            
//             )
//         ),
//         child: Center(
//           child:  Column( 
//             mainAxisAlignment: MainAxisAlignment.center,
//               children: [ 
//                 Image.asset("assets/images/quiz-logo.png",scale: 2,),
//                const   SizedBox(height: 70,),
//                 textMethod("Learn Flutter the fun way!", 25,),
      
//                 TextButton(onPressed: (){},
//                 style: TextButton.styleFrom(
//                   padding: const EdgeInsets.only(top: 30)
//                 ),
//                  child: textMethod("Start Quize", 20,)
//                  )
//               ],
//             ),
//           ),
//       ),
      
//     );
//   }
  


// Text textMethod(String text, double size,){
//   return Text( 
//      text,
//     style:  TextStyle(fontSize: size,color: Colors.white)
    

//   );
// }

// }