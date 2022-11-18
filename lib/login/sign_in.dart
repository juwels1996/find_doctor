import 'package:find_doctor/login/forgot_screen.dart';
import 'package:find_doctor/login/sign_up.dart';
import 'package:find_doctor/screen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool  checkboxValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 300,
              width: double.infinity,
              child:  Image.asset("assets/images/login_image.png"),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text("Welcome Back!"),
                      Text("Sign In to Continue"),
                    ],
                  ),
                )

              ],
            ),
            SizedBox(
              height: 15,
            ),

            Container(
              padding: EdgeInsets.all(8),
              height: 56,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hoverColor: Colors.grey,
                  hintText: "Enter Your Email",
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 56,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Your Passcode",
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    unselectedWidgetColor: Color(0xFFF5F5F5),
                  ),
                  child: Checkbox(
                    value: checkboxValue ??= true,
                    onChanged: (newValue) async {
                      setState(() => checkboxValue = newValue!);
                    },
                    activeColor:Colors.blue,
                  ),
                ),

                Text(
                  "Remember me",
                ),
                SizedBox(width: 10,),
                GestureDetector(

                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPass()));
                    },
                    child: Center(
                        child: Text(
                          "Forgot Password?",

                        ))),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

              },
              child: Container(
                margin: EdgeInsets.all(16),
                height: 56.0,
                decoration: new BoxDecoration(
                  color: Colors.deepPurple,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Sign In',style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
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
    );
  }
}
