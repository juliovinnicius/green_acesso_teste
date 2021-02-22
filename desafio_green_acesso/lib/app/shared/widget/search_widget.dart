import 'package:desafio_green_acesso/app/shared/helper/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      height: 50,
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: new InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 17, right: 17, top: 13),
          hintText: "Search...",
          suffixIcon: Container(
            width: 25,
            height: 50,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              color: ColorLib.teal.color,
              borderRadius: new BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}
