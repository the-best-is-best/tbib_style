# tbib_style

A Package for flutter.

You can use the package to control your font easily.

you can control your font with google font package

# tutorial
[youtube] https://youtu.be/P1eAeWMCgxM

# default style should use in desktop

property | description
-------- |------------
h1       | fontSize: 40, fontWeight: FontWeight.bold, height: 1.2
h2       | fontSize: 32, fontWeight: FontWeight.w600, height: 1.2
h3       | fontSize: 28, fontWeight: FontWeight.w600, height: 1.2
h4       | fontSize: 24, fontWeight: FontWeight.w500, height: 1.2
h5       | fontSize: 20, height: 1.2
h6       | fontSize: 16, height: 1.2
b1       | fontSize: 20, fontWeight: FontWeight.w500, height: 1.2
b2       | fontSize: 16, fontWeight: FontWeight.w400, height: 1.2



# important information

when use TBIBFontStyle.lisenGoogleFont(
      GoogleFonts.aBeeZee(textStyle: TBIBFontStyle.h2), 2);

      TBIBFontStyle.addCustomFont("BerthaMelanie", 3);
      
      you see ,2 ?? 2 meaning h2 in this library you have h1 to h6 only and b1 take style from h5 and b2 take style from h6

when use Pacakge google font use it in first code then edit your style

# you can use code in main to handle all fonts in light and dark mode

```dart
  
//h1 style that mean h1 in library change fontFamily with BerthaMelanie
  TBIBFontStyle.h1 = TBIBFontStyle.h1.copyWith(fontFamily: "BerthaMelanie");
  //dark h1
    // 0.0.6 not need change color to white it is default

  TBIBFontStyle.h1Dark = TBIBFontStyle.h1Dark.copyWith(color: Colors.white);

//h2 dark with default style but in dark mode with color white
  // 0.0.6 not need change color to white it is default

  TBIBFontStyle.h2Dark = TBIBFontStyle.h2Dark.copyWith(color: Colors.white);

  //h3 and h3Dark style will change fontFamily with BerthaMelanie like in h1
  // ,3 is mean h3
  TBIBFontStyle.addCustomFont("BerthaMelanie", 3);
  // h3 dark  will be color white 
  // 0.0.6 not need change color to white it is default
  TBIBFontStyle.h3Dark = TBIBFontStyle.h3Dark.copyWith(color: Colors.white);

```

# You can use responsive font size  TBIBFontStyle.fontResponsive(width ); deprecated

```dart
    /*
    that mean use font responsive with default style library in mobile 
    */
    double width = MediaQuery.of(context).size.width;
    TBIBFontStyle.fontResponsive(width );
```

# You can use responsive font size 0.0.6

```dart
    /*
    that mean use font responsive with default style library in mobile 
    */
    double width = MediaQuery.of(context).size.width;
   

# when use TBIBFontStyle.fontResponsive in mobile or tablet width < 1200  default

property | description
-------- |------------
h1       | fontSize: 22 + ((1.5 * screenWidth) / 100), fontWeight: FontWeight.bold, height: 1.2
h2       | fontSize: 21.2 + ((.9 * screenWidth) / 100), fontWeight: FontWeight.w600, height: 1.2
h3       | fontSize: 20.8 + ((.6 * screenWidth) / 100), fontWeight: FontWeight.w600, height: 1.2
h4       | fontSize: 20.4 + ((.3 * screenWidth) / 100), fontWeight: FontWeight.w500, height: 1.2
h5       | fontSize: 20, height: 1.2
h6       | fontSize: 16, height: 1.2
b1       | fontSize: 20, fontWeight: FontWeight.w500, height: 1.2
b2       | fontSize: 16, fontWeight: FontWeight.w400, height: 1.2


#  if change font size or fontWeight and used responsive font size
 
```dart
/*
 that code mean when width screen > 1200 h1 will be font size 20
*/
 double width = MediaQuery.of(context).size.width;
   if(width < 1200){
       TBIBFontStyle.h1=TBIBFontStyle.h1.copyWith(fontSize:20); 
       // or remove default style
       TBIBFontStyle.h1 = TextStyle(fontSize: 20);
         // when use useCastomFontSize is mean use any h1 to h6 changed
       TBIBFontStyle.fontResponsive(width,useCastomFontSize: true); // deprecated
    }
```
if make useCastomFontSize true you should use hotRestart not reload sorry for this issues

# you can use GoogleFont flutter package like this 
  
```dart
      /*
  that mean h2 font family is aBeeZee from GoogleFont Package 
      */
    TBIBFontStyle.lisenGoogleFont(
      GoogleFonts.aBeeZee(textStyle: TBIBFontStyle.h2), 2);
```

# you can use custom font 
 
```dart
    /*
    I download BerthaMelanie font and added it in pubspec 
    and when add this code in main it mean h3 and h3Dark fontFamily = BerthaMelanie
    */
   TBIBFontStyle.addCustomFont("BerthaMelanie", 3);
```

# you can use deafult style in flutter h1 = headline1 but should remove responsive font size

```dart
   TBIBFontStyle.defaultFlutterStyle();
```

# when use light and dark mode

```dart
    Text(
        "Text color mode",
        style: isDark ? TBIBFontStyle.h3Dark : TBIBFontStyle.h3,
    ),
```