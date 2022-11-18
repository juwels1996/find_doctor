import 'package:find_doctor/widget/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/height_width.dart';
import '../widget/constraints.dart';
import 'doctor_item.dart';
import 'doctor_page.dart';

const PRODUCT_DATA = [
  {"image": "general.png", "name": "General Medicine", "rest": "1200 Doctors", "rating": "4.5 (164)", "price": 20, "currency": "\$"},
  {"image": "internal.png", "name": "Internal Medicine", "rest": "800 Doctors", "rating": "4.7 (199)", "price": 10, "currency": "\$"},
  {"image": "derma.png", "name": "Dermatology", "rest": "800 Doctors", "rating": "4.2 (101)", "price": 10, "currency": "\$"},
  {"image": "gyne.png", "name": "Gynecology", "rest": "1200 Doctors", "rating": "3.9 (150)", "price": 15, "currency": "\$"},
];

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            color: BackGroundColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Find Your Medical",
                                          style: textTheme.headline5!.apply(color: Colors.black),
                                        ),
                                        Text(
                                          "Solutions!",
                                          style: textTheme.headline5!.apply(color: Colors.black),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                    width: constraints.maxWidth,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            children: [

                              Row(
                                children: [
                                  Text(
                                    "Categories(Specialities)",
                                  ),
                                  Expanded(
                                    child: Center(),
                                  ),
                                  Text(
                                    "View All > ",
                                  ),
                                  addHorizontalSpace(10),
                                ],
                              ),
                              addVerticalSpace(10),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                child: Row(
                                  children: PRODUCT_DATA
                                      .map((data) => InkWell(
                                    onTap: () {
                                      _focusNode.unfocus();
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductPage(productData: data)));
                                    },
                                    child: ProductItem(
                                      width: constraints.maxWidth * 0.50,
                                      productData: data,
                                    ),
                                  ))
                                      .toList(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 9,),
                  Container(
                    width: constraints.maxWidth,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Categories(Specialities)",
                                  ),
                                  Expanded(
                                    child: Center(),
                                  ),
                                  Text(
                                    "View All > ",
                                    style: textTheme.subtitle2!.apply(color: COLOR_ORANGE),
                                  ),
                                ],
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                child: Row(
                                  children: PRODUCT_DATA
                                      .map((data) => InkWell(
                                    onTap: () {
                                      _focusNode.unfocus();
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductPage(productData: data)));
                                    },
                                    child: ProductItem(
                                      width: constraints.maxWidth * 0.50,
                                      productData: data,
                                    ),
                                  ))
                                      .toList(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}