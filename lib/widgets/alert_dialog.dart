import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

showAlertDialog(BuildContext context) {
  Widget okButton = RaisedButton(
    color: Colors.blue,
    splashColor: Colors.blueAccent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Center(
        child: Text(
      "OK",
      style: GoogleFonts.poppins(color: Colors.white),
    )),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    title: Text(
      "Wypełnij kwestionariusz z następnego kroku w następujący sposób:",
      style: GoogleFonts.poppins(),
    ),
    content: Text(
        "Rozdziel 10 punktów w każdej z siedmiu części kwestionariusza. Możesz przypisać 10 punktów tylko jednemu zadaniu, które doskonale opisuje Twoje zachowanie w grupie, lub też rozdzielić 10 punktów pomiędzy wszystkie lub niektóre zadania opisujące mniej lub bardziej adekwatnie Twoje zachowanie",
        style: GoogleFonts.poppins()),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
