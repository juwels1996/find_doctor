
import 'package:find_doctor/model/list.dart';
import 'package:find_doctor/model/model_class.dart';
import 'package:find_doctor/widget/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/color.dart';
import '../widget/doctor_card.dart';

class DrawerHomePage extends StatelessWidget {
  Model products=Model();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGroundColor,
      body: Container(
        margin: EdgeInsets.only(left: 15,right: 15),

        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Find your medical",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                Text("Solution",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                SizedBox(height: 12,),
                TextFormField(

                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 30,right: 30),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),

                ),

              ],
            ),
            SizedBox(height: 20,),

            Container(
              height: 180,
              width: 328,
              decoration: BoxDecoration(
                  color: CarddoctorColor,
                  borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Padding(padding: EdgeInsets.only(left: 12)),
                  Text("Doctor Appoinment",style: TextStyle(fontSize: 22,color: WHITE),),
                  Text("Search your doctor and book an appoinment",style: TextStyle(fontSize: 13,color: WHITE_1),),
                  SizedBox(height: 50,),

                  ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: WHITE,

                    ),
                      onPressed: (){},
                      child: Text("Book Appoinment",style: TextStyle(color: Buttontext,fontSize: 12),)),


                  // Container(
                  //   height: 300,
                  //   child: SingleChildScrollView(
                  //     child: Row(
                  //       children: [
                  //         CardWidget(
                  //             "assets/images/general.png",
                  //             "General Medicine",
                  //             "1200 Doctors"),
                  //         CardWidget(
                  //             "assets/images/general.png",
                  //             "General Medicine",
                  //             "1200 Doctors"),
                  //         CardWidget(
                  //             "assets/images/general.png",
                  //             "General Medicine",
                  //             "1200 Doctors"),
                  //       ],
                  //     ),
                  //   ),
                  // ),



                ],
              ),

            ),
            SizedBox(height: 12,),
            Container(
              height: 400,
              width:double.infinity,
              child: Padding(padding:EdgeInsets.only(left: 10,
              bottom: 10),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Popular Food",
                            style:TextStyle(fontSize: 18) ,
                            ),
                            Expanded(

                                child: Center()),
                            Text("View All>")
                          ],
                        )
                      ],
                    ),
                    Positioned(child: Container(
                      width: double.infinity,
                      height:300,

                    ))
                  ],
                ),

              ),
            ),



            SizedBox(height: 14,),
            // Container(
            //   height: 300,
            //   child: Stack(
            //     children: <Widget>[
            //       Padding(
            //           padding: EdgeInsets.only(left: 12),
            //           child: Row(
            //             children: <Widget>[
            //               Text('Deals',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.bold, fontSize: 20)),
            //               Icon(
            //                 Icons.arrow_forward,
            //                 size: 20,
            //               )
            //             ],
            //           )),
            //       ListView.builder(
            //           itemCount: 10,
            //           scrollDirection: Axis.horizontal,
            //           padding: EdgeInsets.only(right: 12, left: 12, top: 40),
            //           itemBuilder: (context, index) {
            //             return Container(
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: <Widget>[
            //                   Container(
            //                     margin: EdgeInsets.only(right: 5),
            //                     width: 155,
            //                     height: 120,
            //                     decoration: BoxDecoration(
            //                       border: Border.all(
            //                           width: 1, color: Colors.grey),
            //                       image: DecorationImage(
            //                           image: AssetImage(
            //                               products.image??"")),
            //                     ),
            //                   ),
            //                   SizedBox(height: 8),
            //                   Container(
            //                     width: 155,
            //                     child: Text(products.title??"",
            //                         style: TextStyle(fontSize: 13)),
            //                   ),
            //                   SizedBox(height: 5),
            //                   Text(products.number??"",
            //                       style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.bold)),
            //                   SizedBox(height: 3),
            //                 ],
            //               ),
            //             );
            //           })
            //     ],
            //   ),
            // ),

            Container(
              height:220,
              child: Column(
                children: [
                  DoctorsTile(),
                  SizedBox(height: 10,),
                  DoctorsTile()
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
