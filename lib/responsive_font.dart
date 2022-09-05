import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'tbib_style.dart';

class ResponiveFont {
  static bool _responsiveEnabled = false;

  static void responsive() {
    if (!_responsiveEnabled) {
      log("message");
      TBIBFontStyle.h1 =
          TBIBFontStyle.h1.copyWith(fontSize: TBIBFontStyle.h1.fontSize!.sp);
      TBIBFontStyle.h1Dark = TBIBFontStyle.h1Dark
          .copyWith(fontSize: TBIBFontStyle.h1Dark.fontSize!.sp);

      TBIBFontStyle.h2 =
          TBIBFontStyle.h2.copyWith(fontSize: TBIBFontStyle.h2.fontSize!.sp);
      TBIBFontStyle.h2Dark = TBIBFontStyle.h2Dark
          .copyWith(fontSize: TBIBFontStyle.h2Dark.fontSize!.sp);

      TBIBFontStyle.h3 =
          TBIBFontStyle.h3.copyWith(fontSize: TBIBFontStyle.h3.fontSize!.sp);
      TBIBFontStyle.h3Dark = TBIBFontStyle.h3Dark
          .copyWith(fontSize: TBIBFontStyle.h3Dark.fontSize!.sp);

      TBIBFontStyle.h4 =
          TBIBFontStyle.h4.copyWith(fontSize: TBIBFontStyle.h4.fontSize!.sp);
      TBIBFontStyle.h4Dark = TBIBFontStyle.h4Dark
          .copyWith(fontSize: TBIBFontStyle.h4Dark.fontSize!.sp);

      TBIBFontStyle.h5 =
          TBIBFontStyle.h5.copyWith(fontSize: TBIBFontStyle.h5.fontSize!.sp);
      TBIBFontStyle.h5Dark = TBIBFontStyle.h5Dark
          .copyWith(fontSize: TBIBFontStyle.h5Dark.fontSize!.sp);

      TBIBFontStyle.h6 =
          TBIBFontStyle.h6.copyWith(fontSize: TBIBFontStyle.h6.fontSize!.sp);
      TBIBFontStyle.h6Dark = TBIBFontStyle.h6Dark
          .copyWith(fontSize: TBIBFontStyle.h6Dark.fontSize!.sp);

      TBIBFontStyle.b1 =
          TBIBFontStyle.b1.copyWith(fontSize: TBIBFontStyle.b1.fontSize!.sp);
      TBIBFontStyle.b1Dark = TBIBFontStyle.b1Dark
          .copyWith(fontSize: TBIBFontStyle.b1Dark.fontSize!.sp);

      TBIBFontStyle.b2 =
          TBIBFontStyle.b2.copyWith(fontSize: TBIBFontStyle.b2.fontSize!.sp);
      TBIBFontStyle.b2Dark = TBIBFontStyle.b2Dark
          .copyWith(fontSize: TBIBFontStyle.b2Dark.fontSize!.sp);
      _responsiveEnabled = true;
    }
  }
}
