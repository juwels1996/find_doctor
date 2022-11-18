import 'package:find_doctor/widget/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class DoctorsTile extends StatelessWidget {

  Color ratingColor=Color(0xffFF0000);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        height: 130,
        width:400 ,
        decoration: BoxDecoration(
            color: WHITE,
            borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 28),
        child: Row(
          children: <Widget>[
            Image.asset("assets/images/ishti.png", height: 70,),
            SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text("Dr. Ishtiuq Ahmed Chowdhury", style: TextStyle(
                      color: BLACK,
                      fontSize: 14
                  ),),
                ),
                SizedBox(height: 2,),
                Text("General Practitioner", style: TextStyle(
                    fontSize: 12
                ),),
                Text("Somerian Clinic-Dubai", style: TextStyle(
                    fontSize: 12
                ),),
      RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: 14,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      )


              ],
            ),
          ],
        ),
      ),
    );
  }
}