import 'package:belbintest/styles/styles.dart';
import 'package:belbintest/templates/template_explainer_widget.dart';
import 'package:belbintest/widgets/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var imie = null;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: 14,
    );
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(children: [
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 140, 30, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Test Belbina',
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 42),
                          Text(
                            'Rozdziel 10 punktów w każdej z siedmiu części kwestionariusza.',
                            style: GoogleFonts.poppins(textStyle: style),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Możesz przypisać 10 punktów tylko jednemu zadaniu, które doskonale opisuje Twoje zachowanie w grupie',
                            style: GoogleFonts.poppins(textStyle: style),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Lub też rozdzielic 10 punktów pomiędzy wszystkie lub niektóre zadania opisujące mniej lub bardziej adekwatnie Twoje zachowanie.',
                            style: GoogleFonts.poppins(textStyle: style),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 79, 0, 48),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                child: TextFormField(
                                  onChanged: (input) => imie = input,
                                  keyboardType: TextInputType.text,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Wpisz imię',
                                    alignLabelWithHint: true,
                                    hintStyle: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black26,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Proszę uzupełnić";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: RaisedButton(
                              padding: EdgeInsets.fromLTRB(140, 25, 140, 25),
                              color: MyColors.buttonColor,
                              splashColor: Colors.red[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                "Dalej    >",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          TemplateExplainerWidget()));
                                }
                                _formKey.currentState.save();
                              },
                            ),
                          ),
                          
                        ],
                      ),
                    ))
              ]),
            ),
          ),
        ));
  }
}
