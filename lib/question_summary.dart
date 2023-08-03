import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
               return SummaryItem(data);
          },
          //   return Row(children: [
          //      Text(((data['question_index'] as int) + 1).toString()),
          //      Expanded(
          //        child: Column(
          //         children: [
          //           Text(data['question'] as String),
          //           const SizedBox(height: 5,),
          //           Text(data['user_answer'] as String),
          //           Text(data['correct_answer'] as String)
          //         ],
          //        ),
          //      ),
          
          //   ],);
          // },
          ).toList(),
        ),
      ),
    );
  }
}
