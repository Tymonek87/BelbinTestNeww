import 'package:belbintest/lists/question_list.dart';
import 'package:belbintest/lists/role_list.dart';
import 'package:belbintest/templates/template_scores_view.dart';
import 'package:belbintest/styles/styles.dart';
import 'package:belbintest/widgets/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleRoleExplainer extends StatefulWidget {
  const SingleRoleExplainer({Key key, this.role}) : super(key: key);

  final Role role;

  @override
  _SingleRoleExplainerState createState() => _SingleRoleExplainerState();
}

class _SingleRoleExplainerState extends State<SingleRoleExplainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions:[ThemeSwitcher()] ),
        body: SafeArea(
      child: Stack(children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
              ),
              child: Center(
                child: Text(
                  'Role w grupie',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              
              
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            widget.role.title,
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.role.description,
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Cechy: ',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Text(
                              widget.role.characteristic,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
