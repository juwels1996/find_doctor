import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardWidget extends StatelessWidget {

  String img;
  String title;
  String number;
  CardWidget(this.img,this.title,this.number);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 18),
      itemCount: 10,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          child:Column(
            children: [
              Image.asset(img),
              Text(title),
              Text(number)
            ],
          )


        );
      },
    );
  }
}
