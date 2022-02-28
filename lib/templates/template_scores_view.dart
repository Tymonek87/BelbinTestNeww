import 'package:belbintest/lists/question_list.dart';
import 'package:belbintest/pages/role_score_view.dart';
import 'package:belbintest/widgets/settings_alert.dart';
import 'package:belbintest/widgets/theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scores extends StatefulWidget {
  @override
  _ScoresState createState() => _ScoresState();
  Scores({this.list});
  final List<Part> list;
}

var low = 'Niskie';
var medium = "Srednie";
var high = 'Wysokie';
var veryHigh = 'Bardzo wysokie';

double po;
double nl;
double cza;
double sie;
double czk;
double se;
double czg;
double per;

class _ScoresState extends State<Scores> {
  @override
  void initState() {
    po = (getSliderValue(0, 7) +
            getSliderValue(1, 0) +
            getSliderValue(2, 7) +
            getSliderValue(3, 3) +
            getSliderValue(4, 1) +
            getSliderValue(5, 5) +
            getSliderValue(6, 4))
        .roundToDouble();

    nl = (getSliderValue(0, 3) +
            getSliderValue(1, 0) +
            getSliderValue(2, 7) +
            getSliderValue(3, 3) +
            getSliderValue(4, 1) +
            getSliderValue(5, 5) +
            getSliderValue(6, 4))
        .roundToDouble();

    cza = (getSliderValue(0, 5) +
            getSliderValue(1, 4) +
            getSliderValue(2, 2) +
            getSliderValue(3, 1) +
            getSliderValue(4, 3) +
            getSliderValue(5, 6) +
            getSliderValue(6, 0))
        .roundToDouble();

    sie = (getSliderValue(0, 2) +
            getSliderValue(1, 6) +
            getSliderValue(2, 3) +
            getSliderValue(3, 4) +
            getSliderValue(4, 7) +
            getSliderValue(5, 0) +
            getSliderValue(6, 5))
        .roundToDouble();

    czk = (getSliderValue(0, 0) +
            getSliderValue(1, 2) +
            getSliderValue(2, 5) +
            getSliderValue(3, 6) +
            getSliderValue(4, 4) +
            getSliderValue(5, 7) +
            getSliderValue(6, 3))
        .roundToDouble();

    se = (getSliderValue(0, 7) +
            getSliderValue(1, 3) +
            getSliderValue(2, 6) +
            getSliderValue(3, 2) +
            getSliderValue(4, 0) +
            getSliderValue(5, 4) +
            getSliderValue(6, 1))
        .roundToDouble();

    czg = (getSliderValue(0, 1) +
            getSliderValue(1, 5) +
            getSliderValue(2, 3) +
            getSliderValue(3, 0) +
            getSliderValue(4, 2) +
            getSliderValue(5, 1) +
            getSliderValue(6, 7))
        .roundToDouble();

    per = (getSliderValue(0, 4) +
            getSliderValue(1, 7) +
            getSliderValue(2, 1) +
            getSliderValue(3, 5) +
            getSliderValue(4, 6) +
            getSliderValue(5, 3) +
            getSliderValue(6, 2))
        .roundToDouble();
    super.initState();
  }

  double getSliderValue(int a, int b) {
    return widget.list[a].questions.subQuestions[b].answer;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () {
              showSettingsDialog(context);
            },
            child: Icon(Icons.settings, color: Colors.white,))
      ]),
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async => false,
        child: Stack(children: [
          Container(
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
          ),
          RoleScoreView()
        ]),
      ),
    );
  }
}
