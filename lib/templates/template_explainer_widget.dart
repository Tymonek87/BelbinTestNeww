import 'package:belbintest/lists/explainer_list.dart';
import 'package:belbintest/main.dart';
import 'package:belbintest/styles/styles.dart';
import 'package:belbintest/widgets/explainer_widget.dart';
import 'package:belbintest/templates/template_question_widget.dart';
import 'package:belbintest/widgets/theme_switcher.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';



class TemplateExplainerWidget extends StatefulWidget {
  const TemplateExplainerWidget({Key key, this.explainer,this.title}) : super(key: key);

  final Explainer explainer;
  final String title;


  @override
  _TemplateExplainerWidgetState createState() =>
      _TemplateExplainerWidgetState();
}

class _TemplateExplainerWidgetState extends State<TemplateExplainerWidget> {
  int index = 0;
  int pageLength = 3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions:[ThemeSwitcher()] ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        ExplainerWidget(
          explainer: explainerList[index],
        ),
        DotsIndicator(
          dotsCount: pageLength,
          position: index.toDouble(),
          decorator: DotsDecorator(
            color: Colors.grey[350],
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeColor: explainerList[index].colore,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: MyColors.buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              if (index == 2) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TemplateQuestionWidget()));
              } else {
                setState(() {
                  if (index == 2)
                    index = 2;
                  else
                    index++;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (index == 2)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Przejdz do testu',style: style, ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Następna',style: style,),
                    )
                ],
              ),
            ),
          ),
        ),
    
        SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
