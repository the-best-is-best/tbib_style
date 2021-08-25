import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tbib_style/style/font_style.dart';
import 'package:tbib_style/tbib_style.dart';

void main() {
  TBIBFontStyle.lisenGoogleFont(
      GoogleFonts.aBeeZee(textStyle: TBIBFontStyle.h2), 2);

//h1 style
  TBIBFontStyle.h1 = TBIBFontStyle.h1.copyWith(fontFamily: "BerthaMelanie");
  TBIBFontStyle.h1Dark = TBIBFontStyle.h1Dark.copyWith(color: Colors.white);

//h2 style
  TBIBFontStyle.h2Dark = TBIBFontStyle.h2Dark.copyWith(color: Colors.white);

  //h3 style
  TBIBFontStyle.addCustomFont("BerthaMelanie", 3);
  TBIBFontStyle.h3Dark = TBIBFontStyle.h3Dark.copyWith(color: Colors.white);

  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FontSize(),
    );
  }
}

class FontSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    TBIBFontStyle.fontResponsive(width);
    print(TBIBFontStyle.h2.fontSize);
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(
          title: "FontStyle Example",
        ) //MyHomePage(title: 'FontStyle Example'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
              icon: Icon(Icons.brightness_4))
        ],
      ),
      body: Container(
          color: isDark ? Colors.black : null,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Text custom font",
                  style: isDark ? TBIBFontStyle.h1Dark : TBIBFontStyle.h1,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Text color mode",
                  style: isDark ? TBIBFontStyle.h2Dark : TBIBFontStyle.h2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Text color mode",
                  style: isDark ? TBIBFontStyle.h3Dark : TBIBFontStyle.h3,
                ),
              ],
            ),
          )),
    );
  }
}
