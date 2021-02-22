import 'package:desafio_green_acesso/app/shared/helper/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CategoryWidget extends StatelessWidget {
  final IconData icon;
  final String categoryName;
  final String quantityDoctors;

  CategoryWidget({this.icon, this.categoryName, this.quantityDoctors});
  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      height: 150,
      width: 100,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: FaIcon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: TextResponsive(
              categoryName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 20,
            width: 80,
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: TextResponsive(
              quantityDoctors,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorLib.lightTeal.color,
              borderRadius: new BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: ColorLib.teal.color,
        borderRadius: new BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}
