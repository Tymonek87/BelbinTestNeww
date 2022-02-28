import 'package:belbintest/lists/question_list.dart';
import 'package:belbintest/templates/template_scores_view.dart';
import 'package:belbintest/widgets/alert_dialog.dart';
import 'package:belbintest/widgets/question_widget.dart';
import 'package:belbintest/widgets/settings_alert.dart';

import 'package:flutter/material.dart';

class TemplateQuestionWidget extends StatefulWidget {
  const TemplateQuestionWidget({Key key, this.part}) : super(key: key);

  final Part part;

  @override
  _TemplateQuestionWidgetState createState() => _TemplateQuestionWidgetState();
}

class _TemplateQuestionWidgetState extends State<TemplateQuestionWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  showSettingsDialog(context);
                },
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ]),
      body: Column(
        children: [
          Expanded(
            child: QuestionWidget(
              part: questionList[index],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => setState(() {
                  if (index > 0)
                    index--;
                  else
                    (index = 0);
                }),
                child: Text(
                  'Poprzednie',
                ),
              ),
              TextButton(
                  child: Icon(Icons.help),
                  onPressed: () {
                    showAlertDialog(context);
                  }),
              if (index == 6)
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Scores(list: questionList)));
                    },
                    child: Text(
                      'Wyniki',
                    ))
              else
                TextButton(
                    onPressed: () => setState(() {
                          if (index == 6)
                            index = 6;
                          else
                            index++;
                        }),
                    child: Text('Następna'))
            ],
          )
        ],
      ),
    );
  }
}
