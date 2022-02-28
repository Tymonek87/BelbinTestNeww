
import 'package:belbintest/provider/theme_provider.dart';
import 'package:belbintest/splash_screen.dart';
import 'package:belbintest/templates/template_explainer_widget.dart';
import 'package:belbintest/templates/template_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'home_screen.dart';
void main() {
  runApp(MyApp());
}

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => TemplateExplainerWidget(),
  "/welcome": (BuildContext context) => TemplateQuestionWidget(),
};

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
              themeMode: themeProvider.themeMode,
              darkTheme: MyThemes.darkTheme,
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
              routes: routes,
             );
        },
      );
}
