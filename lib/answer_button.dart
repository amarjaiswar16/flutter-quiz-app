import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onClick});

  final String answerText;
  final void Function() onClick;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          
        ),
        child: Text(answerText, textAlign: TextAlign.center,),
      ),
    );
    // return ElevatedButton(
    //   onPressed: onClick,
    //   style: ElevatedButton.styleFrom(
    //     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
    //     backgroundColor: const Color.fromARGB(255, 33, 1, 95),
    //     foregroundColor: Colors.white,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20),
    //     ),
        
    //   ),
    //   child: Text(answerText, textAlign: TextAlign.center,),
    // );
  }
}
