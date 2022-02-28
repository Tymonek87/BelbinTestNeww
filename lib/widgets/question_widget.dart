import 'package:belbintest/lists/question_list.dart';
import 'package:belbintest/styles/styles.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({
    Key key,
    this.part,
    this.question,
    this.subQuestion,
  }) : super(key: key);

  final Part part;
  final Question question;
  final SubQuestion subQuestion;

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.green[400],
                        textColor: Colors.white,
                        child: RichText(
                          text: TextSpan(
                              text: (10 - widget.part.totalPoints)
                                  .round()
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ),
                        shape: CircleBorder(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.part.questions.title,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Column(
                    children: [
                      for (SubQuestion value
                          in widget.part.questions.subQuestions)
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: MyColors.borderColor, width: 2.0),
                                borderRadius: BorderRadius.circular(15.0)),
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
                                    Text('0'),
                                    Container(
                                      width: 320,
                                      child: _slider(value),
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
            ),
          ],
        ),
      ),
    );
  }

  SliderTheme _slider(SubQuestion value) {
    return SliderTheme(
      data: SliderThemeData(
          trackHeight: 10.0,
          minThumbSeparation: 2,
          thumbColor: MyColors.activeSliderColor,
          thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 10.0, pressedElevation: 6, elevation: 1),
          overlayColor: MyColors.activeSliderColor,
          inactiveTickMarkColor: MyColors.inactiveSliderColor,
          inactiveTrackColor: MyColors.inactiveSliderColor,
          activeTickMarkColor: MyColors.activeSliderColor,
          activeTrackColor: MyColors.activeSliderColor,
          disabledInactiveTrackColor: Colors.green),
      child: Slider(
        onChanged: (newValue) {
          if (widget.part.totalPoints < 10) {
            setState(() {
              widget.part.totalPoints =
                  widget.part.totalPoints - value.answer + newValue;
              value.answer = newValue;
            });
          }
          if (newValue < value.answer)
            setState(() {
              widget.part.totalPoints =
                  widget.part.totalPoints - value.answer + newValue;
              value.answer = newValue;
            });
        },
        onChangeStart: (newValue) {},
        onChangeEnd: (newValue) {
          if (widget.part.totalPoints > 10)
            setState(() {
              widget.part.totalPoints = widget.part.totalPoints - value.answer;
              value.answer = 0;
            });
        },
        min: 0,
        max: 10,
        divisions: 10,
        label: value.answer.round().toString(),
        value: value.answer,
      ),
    );
  }
}
