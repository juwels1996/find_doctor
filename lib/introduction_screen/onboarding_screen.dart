import 'package:find_doctor/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../login/sign_in.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: IntroductionScreen(
              globalBackgroundColor: Colors.white,
              pages: [

                PageViewModel(
                  title: "Find Doctor",
                    bodyWidget: Container(
                      height: 360,
                      width: 420,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55)
                      ),
                      child: Card(
                        color: Colors.deepPurple,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(52.0),
                              child: Text("Find Your Doctor",style: TextStyle(color: Colors.white,fontSize: 22),),
                            ),
                            Text(" Patients are encouraged to search CareDash for their provider and write a review. Every patient must sign up to ensure that all reviews are written by real people. We ask patients to leave honest, respectful, and detailed reviews that follow our guidelines.",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                              textAlign: TextAlign.center,),
                            
                          ],
                        ),
                      ),
                    ),
                    image: Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 55),
                      child: Container(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/intro_2.png',
                          fit: BoxFit.cover,),
                      ),
                    )
                ),
                PageViewModel(
                    title: "Find Doctor",
                    bodyWidget: Container(
                      height: 360,
                      width: 420,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55)
                      ),
                      child: Card(
                        color: Colors.deepPurple,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(52.0),
                              child: Text("Find Your Doctor",style: TextStyle(color: Colors.white,fontSize: 22),),
                            ),
                            Text(" Patients are encouraged to search CareDash for their provider and write a review. Every patient must sign up to ensure that all reviews are written by real people. We ask patients to leave honest, respectful, and detailed reviews that follow our guidelines.",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                              textAlign: TextAlign.center,),

                          ],
                        ),
                      ),
                    ),
                    image: Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 55),
                      child: Container(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/intro_1.png',
                          fit: BoxFit.cover,),
                      ),
                    )
                ),
                PageViewModel(
                    title: "Find Doctor",
                    bodyWidget: Container(
                      height: 360,
                      width: 420,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55)
                      ),
                      child: Card(
                        color: Colors.deepPurple,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(52.0),
                              child: Text("Find Your Doctor",style: TextStyle(color: Colors.white,fontSize: 22),),
                            ),
                            Text(" Patients are encouraged to search CareDash for their provider and write a review. Every patient must sign up to ensure that all reviews are written by real people. We ask patients to leave honest, respectful, and detailed reviews that follow our guidelines.",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                              textAlign: TextAlign.center,),

                          ],
                        ),
                      ),
                    ),
                    image: Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 55),
                      child: Container(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/intro_3.png',
                          fit: BoxFit.cover,),
                      ),
                    )
                ),

              ],
              onDone: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => HomePage()));
              },

              showNextButton: true,
              showSkipButton: true,
              next: Icon(Icons.arrow_forward,color: Colors.white,),
              skip: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => SignInPage()));
              },
                  child:Text("Get Started",style: TextStyle(color: Colors.white),),),
              done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
              dotsDecorator: DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(20.0, 10.0),
                color: Colors.black26,
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              showBackButton: false,
            )));
  }
}
