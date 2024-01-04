import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(((data['question_index'] as int) + 1).toString(),style: const TextStyle(color: Colors.white,),),
                const SizedBox(width: 15,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String,style:const TextStyle(color: Color.fromARGB(255, 248, 247, 248),),),
                        const SizedBox(height: 5,),
                        Text(data['user_answer'] as String,style: const TextStyle(color: Color.fromARGB(255, 209, 20, 184)),),
                        Text(data['correct_answer'] as String,style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
