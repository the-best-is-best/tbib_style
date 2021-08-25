import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tbib_style/style/font_style.dart';
import 'package:tbib_style/tbib_style.dart';

void main() {
  //font google aBeeZee ,2 meanning h2
  // جاب استيل h2 بتاع المكتبه وهعدلها ةيغير font fmaily to aBeeZee
  TBIBFontStyle.lisenGoogleFont(
      GoogleFonts.aBeeZee(textStyle: TBIBFontStyle.h2), 2);

//h1 style
  TBIBFontStyle.h1 = TBIBFontStyle.h1.copyWith(fontFamily: "BerthaMelanie");
  TBIBFontStyle.h1Dark = TBIBFontStyle.h1Dark.copyWith(color: Colors.white);

//h2 style wih defult style
  TBIBFontStyle.h2Dark = TBIBFontStyle.h2Dark.copyWith(color: Colors.white);

  //h3 style and h3Dark will be BerthaMelanie font
  TBIBFontStyle.addCustomFont("BerthaMelanie", 3);

  TBIBFontStyle.h3Dark = TBIBFontStyle.h3Dark.copyWith(color: Colors.white);

// see you can use your castom style like that
  TBIBFontStyle.h1 = TextStyle(fontSize: 22);
// you see font larger sorry but code work again and again when your build app use code with build
// widget when ended move code in main

  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "FontStyle Example",
      ),
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
    double width = MediaQuery.of(context).size.width;
    // if need change style and use your change h1 start with 22 your want start with 24
    // now see what changed after open code and change it
    // now work
    //sorry
    TBIBFontStyle.fontResponsive(width, useCastomFontSize: true);
    print(TBIBFontStyle.h1.fontSize);
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
