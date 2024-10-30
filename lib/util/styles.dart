import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tkgblood/util/dimensions.dart';

const sfProLight = TextStyle(
  fontFamily: 'SFProText',
  fontWeight: FontWeight.w300,
);

const textRegular = TextStyle(
  fontFamily: 'SFProText',
  fontWeight: FontWeight.w400,
);

const textMedium = TextStyle(
  fontFamily: 'SFProText',
  fontWeight: FontWeight.w500,
);

const textSemiBold = TextStyle(
  fontFamily: 'SFProText',
  fontWeight: FontWeight.w600,
);

const textBold = TextStyle(
  fontFamily: 'SFProText',
  fontWeight: FontWeight.w700,
);

const textHeavy = TextStyle(
  fontFamily: 'SFProText',
  fontWeight: FontWeight.w900,
);

var appBodyText = const TextStyle(
fontFamily: 'SFProText',
fontWeight: FontWeight.w500,fontSize: Dimensions.fifTeen
);


// class ThemeShadow {
//   static List <BoxShadow> getShadow() {
//     List<BoxShadow> boxShadow =  [BoxShadow(color: Get.find<ThemeController>().darkTheme? Colors.black26:
//     Theme.of(Get.context!).primaryColor.withOpacity(.075), blurRadius: 5,spreadRadius: 1,offset: const Offset(1,1))];
//     return boxShadow;
//   }
// }