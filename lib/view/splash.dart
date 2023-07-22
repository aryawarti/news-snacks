import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body:
      Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(

               height: 250,
               width: 250,
               child:  Image.asset("assets/icons/img_1.png"),
             ),
            SizedBox(
              height: 25,
            ),
             Text("News Snacks",style: TextStyle(
               color: Colors.white,
               fontSize: 35,
               fontWeight:FontWeight.bold,

             ),),
           ],
        ),
      ),
    );
  }
}

