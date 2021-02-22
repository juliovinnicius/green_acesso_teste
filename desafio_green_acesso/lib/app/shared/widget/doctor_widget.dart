import 'package:desafio_green_acesso/app/shared/helper/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class DoctorWidget extends StatelessWidget {
  final String image;
  final String doctorName;
  final String specialty;

  DoctorWidget({this.image, this.doctorName, this.specialty});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(bottom: 10),
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(left: 17, bottom: 10, top: 10),
          child: Row(
            children: [
              Image.network(
                image,
                height: 100,
                width: 80,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 15,
              ),
              ContainerResponsive(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerResponsive(
                      child: TextResponsive(
                        doctorName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ContainerResponsive(
                      width: MediaQuery.of(context).size.width - 135,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContainerResponsive(
                            child: TextResponsive(
                              specialty,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.yellow,
                                ),
                                TextResponsive(
                                  "4.9",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  Icons.location_on,
                                  size: 12,
                                  color: Colors.yellow,
                                ),
                                TextResponsive(
                                  "4.9 Km",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
