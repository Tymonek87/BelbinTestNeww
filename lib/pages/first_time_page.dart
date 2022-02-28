import 'package:belbintest/lists/explainer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstTimePage extends StatefulWidget {
  const FirstTimePage({
    Key key,
    this.explainer,
  }) : super(key: key);

  final Explainer explainer;

  @override
  _FirstTimePageState createState() => _FirstTimePageState();
}

class _FirstTimePageState extends State<FirstTimePage> {
  final style = TextStyle(
    fontSize: 16,
  );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: SvgPicture.asset(widget.explainer.image.toString()),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(widget.explainer.description,
                          style: GoogleFonts.poppins(textStyle: style)),
                    ),
                  ],
                )
              ],
            ),
          ],
        )
      ]),
    );
  }
}
