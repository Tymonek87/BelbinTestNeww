import 'package:belbintest/lists/question_list.dart';
import 'package:flutter/material.dart';

class QuestionListView extends StatefulWidget {
  const QuestionListView({Key key, this.part, this.question, this.subQuestion})
      : super(key: key);

  final Part part;
  final Question question;
  final SubQuestion subQuestion;

  @override
  _QuestionListViewState createState() => _QuestionListViewState();
}

class _QuestionListViewState extends State<QuestionListView> {
  double totalPoints;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(.0),
          child: Column(
            children: [
              for (SubQuestion value in widget.part.questions.subQuestions)
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    shadowColor: Colors.grey,
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            value.title,
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('1'),
                            Container(
                              width: 320,
                              child: Slider(
                                onChanged: (value) {},
                                min: 0,
                                max: 10,
                                divisions: 10,
                                value: 0,
                              ),
                            ),
                            Text(
                              '10',
                              textAlign: TextAlign.end,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
