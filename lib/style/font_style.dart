import 'dart:ui';
import 'package:flutter/material.dart';

class TBIBFontStyle {
  static TextStyle h1 =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold, height: 1.2);
  static TextStyle h2 =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w600, height: 1.2);
  static TextStyle h3 =
      TextStyle(fontSize: 28, fontWeight: FontWeight.w600, height: 1.2);
  static TextStyle h4 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w500, height: 1.2);
  static TextStyle h5 = TextStyle(fontSize: 20, height: 1.2);
  static TextStyle h6 = TextStyle(fontSize: 16, height: 1.2);
  static TextStyle b1 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500, height: 1.2);
  static TextStyle b2 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 1.2);

  static TextStyle h1Dark =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold, height: 1.2);
  static TextStyle h2Dark =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w600, height: 1.2);
  static TextStyle h3Dark =
      TextStyle(fontSize: 28, fontWeight: FontWeight.w600, height: 1.2);
  static TextStyle h4Dark =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w500, height: 1.2);
  static TextStyle h5Dark = TextStyle(fontSize: 20, height: 1.2);
  static TextStyle h6Dark = TextStyle(fontSize: 16, height: 1.2);
  static TextStyle b1Dark =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500, height: 1.2);
  static TextStyle b2Dark =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 1.2);

  static defaultFlutterStyle() {
    h1 = TextStyle(fontSize: 96, fontWeight: FontWeight.w200, height: -1.5);
    h2 = TextStyle(fontSize: 60, fontWeight: FontWeight.w200, height: -.5);
    h3 = TextStyle(fontSize: 48, fontWeight: FontWeight.w300);
    h4 = TextStyle(fontSize: 34, fontWeight: FontWeight.w300, height: .25);
    h5 = TextStyle(fontSize: 24, fontWeight: FontWeight.w300);
    h6 = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, height: .15);
  }

  static lisenGoogleFont(TextStyle googleFontsName, int h) {
    switch (h) {
      case 1:
        {
          h1Dark = h1 = googleFontsName;
          return;
        }
      case 2:
        {
          h2Dark = h2 = googleFontsName;
          return;
        }
      case 3:
        {
          h3Dark = h3 = googleFontsName;
          return;
        }
      case 4:
        {
          h4Dark = h4 = googleFontsName;
          return;
        }
      case 5:
        {
          h5Dark = h5 = b1 = b1Dark = googleFontsName;
          return;
        }
      case 6:
        {
          h6 = h6Dark = b2 = b2Dark = googleFontsName;
          return;
        }
      default:
        {
          return null;
        }
    }
  }

  static void fontResponsive(double screenWidth,
      {bool useCastomFontSize = false}) {
    if (!useCastomFontSize) {
      if (screenWidth < 1200) {
        h1 = h1.copyWith(fontSize: 22 + ((1.5 * screenWidth) / 100));
        h1Dark = h1Dark.copyWith(fontSize: 22 + ((1.5 * screenWidth) / 100));

        h2 = h2.copyWith(fontSize: 21.2 + ((.9 * screenWidth) / 100));
        h2Dark = h2Dark.copyWith(fontSize: 21.2 + ((.9 * screenWidth) / 100));

        h3 = h3.copyWith(fontSize: 20.8 + ((.6 * screenWidth) / 100));
        h3Dark = h3Dark.copyWith(fontSize: 20.8 + ((.6 * screenWidth) / 100));
        h4 = h4.copyWith(fontSize: 20.4 + ((.3 * screenWidth) / 100));
        h4Dark = h4Dark.copyWith(fontSize: 20.4 + ((.3 * screenWidth) / 100));
      } else {
        h1 =
            h1.copyWith(fontSize: 40, fontWeight: FontWeight.bold, height: 1.2);
        h1Dark = h1Dark.copyWith(
            fontSize: 40, fontWeight: FontWeight.bold, height: 1.2);
        h2 =
            h2.copyWith(fontSize: 32, fontWeight: FontWeight.w600, height: 1.2);
        h2Dark = h2Dark.copyWith(
            fontSize: 32, fontWeight: FontWeight.w600, height: 1.2);
        h3 =
            h3.copyWith(fontSize: 28, fontWeight: FontWeight.w600, height: 1.2);
        h3Dark = h3Dark.copyWith(
            fontSize: 28, fontWeight: FontWeight.w600, height: 1.2);
        h4 = h4.copyWith(fontSize: 24, fontWeight: FontWeight.w500);
        h4Dark = h4Dark.copyWith(fontSize: 24, fontWeight: FontWeight.w500);
      }
    } else {
      if (screenWidth < 1200) {
        h1 = h1.copyWith(fontSize: h1.fontSize! + ((1.5 * screenWidth) / 100));
        h1Dark = h1Dark.copyWith(
            fontSize: h1.fontSize! + ((1.5 * screenWidth) / 100));

        h2 = h2.copyWith(fontSize: h2.fontSize! + ((.9 * screenWidth) / 100));
        h2Dark = h2Dark.copyWith(
            fontSize: h2.fontSize! + ((.9 * screenWidth) / 100));

        h3 = h3.copyWith(fontSize: h3.fontSize! + ((.6 * screenWidth) / 100));
        h3Dark = h3Dark.copyWith(
            fontSize: h3.fontSize! + ((.6 * screenWidth) / 100));
        h4 = h4.copyWith(fontSize: h4.fontSize! + ((.3 * screenWidth) / 100));
        h4Dark = h4Dark.copyWith(
            fontSize: h4.fontSize! + ((.3 * screenWidth) / 100));
      } else {
        h1 = h1.copyWith(
            fontSize: h1.fontSize!, fontWeight: FontWeight.bold, height: 1.2);
        h1Dark = h1Dark.copyWith(
            fontSize: h1.fontSize!, fontWeight: FontWeight.bold, height: 1.2);
        h2 = h2.copyWith(
            fontSize: h2.fontSize!, fontWeight: FontWeight.w600, height: 1.2);
        h2Dark = h2Dark.copyWith(
            fontSize: h2.fontSize!, fontWeight: FontWeight.w600, height: 1.2);
        h3 = h3.copyWith(
            fontSize: h3.fontSize!, fontWeight: FontWeight.w600, height: 1.2);
        h3Dark = h3Dark.copyWith(
            fontSize: h3.fontSize!, fontWeight: FontWeight.w600, height: 1.2);
        h4 = h4.copyWith(fontSize: h4.fontSize!, fontWeight: FontWeight.w500);
        h4Dark = h4Dark.copyWith(
            fontSize: h4.fontSize!, fontWeight: FontWeight.w500);
      }
    }
  }

  static void addCustomFont(String yourFontFamily, int h) {
    switch (h) {
      case 1:
        {
          h1 = h1.copyWith(fontFamily: yourFontFamily);
          h1Dark = h1Dark.copyWith(fontFamily: yourFontFamily);

          return;
        }
      case 2:
        {
          h2 = h2.copyWith(fontFamily: yourFontFamily);
          h2Dark = h2Dark.copyWith(fontFamily: yourFontFamily);
          return;
        }
      case 3:
        {
          h3 = h3.copyWith(fontFamily: yourFontFamily);
          h3Dark = h3Dark.copyWith(fontFamily: yourFontFamily);
          return;
        }
      case 4:
        {
          h4 = h4.copyWith(fontFamily: yourFontFamily);
          h4Dark = h4Dark.copyWith(fontFamily: yourFontFamily);
          return;
        }
      case 5:
        {
          h5 = h5.copyWith(fontFamily: yourFontFamily);
          h5Dark = h5Dark.copyWith(fontFamily: yourFontFamily);
          b1 = b1.copyWith(fontFamily: yourFontFamily);
          b1Dark = b1Dark.copyWith(fontFamily: yourFontFamily);
          return;
        }
      case 6:
        {
          h6 = h6.copyWith(fontFamily: yourFontFamily);
          h6Dark = h6Dark.copyWith(fontFamily: yourFontFamily);
          b2 = b2.copyWith(fontFamily: yourFontFamily);
          b2Dark = b2Dark.copyWith(fontFamily: yourFontFamily);
          return;
        }
      default:
        {
          return null;
        }
    }
  }
}
