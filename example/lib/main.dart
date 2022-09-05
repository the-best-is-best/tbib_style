import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tbib_style/style/font_style.dart';

void main() {
  // use font google in h1 and h1Dark
  TBIBFontStyle.lisenGoogleFont(
    GoogleFonts.aBeeZee(),
  );

  log(TBIBFontStyle.h2.fontSize.toString());

  // use custom font in h1 only

  TBIBFontStyle.h1 = TBIBFontStyle.h1.copyWith(fontFamily: "BerthaMelanie");

  // use custom font in h3 and h3Dark only
  TBIBFontStyle.addCustomFont("BerthaMelanie", 3);


  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: "FontStyle Example",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
// responsive font in screen > 1200 will be font size like bootstrap
// in < 1200 will be calc font like bootstrap
    TBIBFontStyle.responsiveFontSize(width);

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
              icon: const Icon(Icons.brightness_4))
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Text color mode",
                  style: isDark ? TBIBFontStyle.h2Dark : TBIBFontStyle.h2,
                ),
                const SizedBox(
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
