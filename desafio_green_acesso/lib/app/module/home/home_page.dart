import 'package:desafio_green_acesso/app/module/home/home_controller.dart';
import 'package:desafio_green_acesso/app/shared/helper/color_lib.dart';
import 'package:desafio_green_acesso/app/shared/widget/category_widget.dart';
import 'package:desafio_green_acesso/app/shared/widget/doctor_widget.dart';
import 'package:desafio_green_acesso/app/shared/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_widgets/models/responsive_widgets_model.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:responsive_widgets/widgets/container_responsive_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets().init(context, referenceShortestSide: 411);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorLib.deepKoamaru.color,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.only(right: 17),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  'assets/images/foto_perfil.jpg',
                ),
              ),
            )
          ],
        ),
        body: Observer(
          builder: (_) => controller.isBusy
              ? Center(
                  child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    ColorLib.deepKoamaru.color,
                  ),
                ))
              : Stack(
                  children: [
                    Container(
                      height: 30,
                      color: ColorLib.deepKoamaru.color,
                    ),
                    SingleChildScrollView(
                      child: ContainerResponsive(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ContainerResponsive(
                              width: double.infinity,
                              margin:
                                  EdgeInsets.only(right: 17, top: 25, left: 17),
                              child: TextResponsive(
                                'Hi, Olivia',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            ContainerResponsive(
                              width: double.infinity,
                              margin: EdgeInsets.only(right: 17, left: 17),
                              child: TextResponsive(
                                'Welcome Back',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 17, left: 17),
                              child: SearchWidget(),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 17, left: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextResponsive(
                                    'Category',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextResponsive(
                                    'See all',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 17),
                              height: 150,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CategoryWidget(
                                    icon: FontAwesomeIcons.tooth,
                                    categoryName: "Dental",
                                    quantityDoctors: "26 Doctors",
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CategoryWidget(
                                    icon: FontAwesomeIcons.heart,
                                    categoryName: "Hearth",
                                    quantityDoctors: "18 Doctors",
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CategoryWidget(
                                    icon: FontAwesomeIcons.brain,
                                    categoryName: "Brain",
                                    quantityDoctors: "32 Doctors",
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CategoryWidget(
                                    icon: FontAwesomeIcons.tooth,
                                    categoryName: "Dental",
                                    quantityDoctors: "26 Doctors",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 17, left: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextResponsive(
                                    'Top Rate',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextResponsive(
                                    'See all',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 17, right: 17),
                              child: Column(
                                children: [
                                  DoctorWidget(
                                    image: controller.doctor[0].avatarUrl,
                                    doctorName: "Dr. Fred Mask",
                                    specialty: "Heart sugen",
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DoctorWidget(
                                    image: controller.doctor[1].avatarUrl,
                                    doctorName: "Dr. Stella Kane",
                                    specialty: "Bone Specialist",
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DoctorWidget(
                                    image: controller.doctor[2].avatarUrl,
                                    doctorName: "Dr. Zac Wolff",
                                    specialty: "Eyes Specialist",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(27.0),
                            topRight: const Radius.circular(27.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ));
  }
}
