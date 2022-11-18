import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1F3FF),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 50),
        child: Container(
          height: 220,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(22)),
          child: Column(
            children: [
              Expanded(
                  flex: 10,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 10,
                            child: Container(
                              height: 200,
                              width: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: Image.asset("assets/images/intro_2.png"),
                              ),
                            )),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
