import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();
  static const String title = 'Pokedex';
  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48),
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24);
  }

  static TextStyle getTypeChipTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }
  static getPokeInfoLabelStyle() {
    return const TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black);
  }
  static getPokeInfoTextStyle() {
    return const TextStyle(fontSize: 16, color: Colors.black);
  }
}
