import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DriverSignUpPage extends StatefulWidget {
  const DriverSignUpPage({Key? key}) : super(key: key);

  @override
  State<DriverSignUpPage> createState() => _DriverSignUpPageState();
}

class _DriverSignUpPageState extends State<DriverSignUpPage> {
  Color GREY_7 = Color(0xffF6F6F6);
  Color grey_white = Color(0xffF2F2F2);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  TextEditingController fieldOneController=TextEditingController();
  TextEditingController fieldTowController=TextEditingController();
  TextEditingController fieldThreeController=TextEditingController();
  TextEditingController fieldFourController=TextEditingController();
  TextEditingController fieldFiveController=TextEditingController();
  TextEditingController fieldSixController=TextEditingController();





  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [




            Text("Create Account"),
            Container(
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: grey_white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: grey_white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Email",
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: grey_white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: grey_white,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: TextField(
                      controller: confirmpassController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),



                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      margin: EdgeInsets.all(12),
                      height: 56.0,
                      decoration: new BoxDecoration(
                        color: Colors.deepPurple,
                        border: new Border.all(color: Colors.white, width: 2.0),
                        borderRadius: new BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(

                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DriverSignUpPage()));
                          },
                          child: Center(
                              child: Text(
                                "Sign Up!",style: TextStyle(color: Colors.deepPurple),

                              ))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
