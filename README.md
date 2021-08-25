# tbib_style

A Package for flutter.

You can use the package to control your font easily.

you can control your font with google font package

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


# you can use code in main to handle all fonts in light and dark mode

```dart
  
//h1 style
  TBIBFontStyle.h1 = TBIBFontStyle.h1.copyWith(fontFamily: "BerthaMelanie");
  //dark h1
  TBIBFontStyle.h1Dark = TBIBFontStyle.h1Dark.copyWith(color: Colors.white);

//h2 dark with default size style
  TBIBFontStyle.h2Dark = TBIBFontStyle.h2Dark.copyWith(color: Colors.white);

  //h3 style
  TBIBFontStyle.addCustomFont("BerthaMelanie", 3);
  // h3 dark
  TBIBFontStyle.h3Dark = TBIBFontStyle.h3Dark.copyWith(color: Colors.white);

```

# You can use responsive font size  

```dart
    double width = MediaQuery.of(context).size.width;
    TBIBFontStyle.fontResponsive(width );
```

#  if change font size or fontWeight and used responsive font size

```dart
 double width = MediaQuery.of(context).size.width;
   if(width > 450){
       TBIBFontStyle.h1=TBIBFontStyle.h1.copyWith(size:20);
       // or remove default style
       TBIBFontStyle.h1 = TextStyle(fontSize: 20);
         
       TBIBFontStyle.fontResponsive(width,useCastomFontSize: yes);
    }
```

# you can use GoogleFont flutter package like this 

```dart
    TBIBFontStyle.lisenGoogleFont(
      GoogleFonts.aBeeZee(textStyle: TBIBFontStyle.h2), 2);
```

# you can use custom font 

```dart
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