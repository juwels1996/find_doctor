import 'package:flutter/material.dart';
class ForgotPass extends StatelessWidget {

  TextEditingController emailController = TextEditingController();
  Color GREY_7 = Color(0xffF6F6F6);
  Color grey_white = Color(0xffF2F2F2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Forgot Password",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 35,),

            Container(
              margin: EdgeInsets.all(18),
              height: 56,
              decoration: BoxDecoration(
                color: grey_white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: TextField(
                controller: emailController,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefix: Image.asset("assets/icons/email.png",fit: BoxFit.cover),
                  hintText: " Enter Your Email",
                ),
              ),
            ),
            SizedBox(height: 8,),
            InkWell(
              onTap: () {

              },
              child: Container(
                margin: EdgeInsets.only(left: 12,right: 12),
                height: 48.0,
                decoration: new BoxDecoration(
                  color: Colors.deepPurple,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),

                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
