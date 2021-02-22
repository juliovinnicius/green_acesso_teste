import 'package:flutter/material.dart';
import 'package:html_color/html_color.dart';

// NOTE site para pegar os nomes das cores
// http://chir.ag/projects/name-that-color/#AD44BB
enum ColorLib {
  deepKoamaru,
  teal,
  lightTeal,
}

extension ColorLibExtension on ColorLib {
  static const Map<ColorLib, String> names = {
    ColorLib.deepKoamaru: '111E6C',
    ColorLib.teal: '008080',
    ColorLib.lightTeal: '00a0a0',
  };

  String get hex => names[this];

  Color get color => HTMLColor.hex(names[this]);

  Color colorO(double opacity) => HTMLColor.hex(names[this], opcity: opacity);
}

extension ColorExtension on String {
  Color get color => HTMLColor.hex(this, opcity: 1);
}
