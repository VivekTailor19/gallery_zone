import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2),() => Navigator.pushReplacementNamed(context, "home"),);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo/logo.png",height: 120,width: 120,fit: BoxFit.fill,),
              SizedBox(height: 50,),
              Text("Gallery Zone",style: GoogleFonts.breeSerif(fontSize: 35,color: Colors.red.shade200),)
            ],
          ),
        ),
      ),
    );
  }
}
