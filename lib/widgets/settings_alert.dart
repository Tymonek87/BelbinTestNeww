import 'package:belbintest/widgets/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

showSettingsDialog(BuildContext context) {
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
    title: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(
          "Ustawienia",
          style: GoogleFonts.poppins(),
        ),
      ],
    ),
    content: Row(
      children: [
        Text(
            "Light/Dark Mode",
            style: GoogleFonts.poppins()),
            ThemeSwitcher()
      ],
    ),
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

