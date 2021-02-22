import 'package:desafio_green_acesso/app/module/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        // Bloc(
        //       (i) => HomeController(),
        // ),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
