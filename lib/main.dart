import 'package:flutter/material.dart';
import 'package:gallery_zone/provider/gallery_provider.dart';
import 'package:gallery_zone/splashscreen/splashscreen.dart';
import 'package:gallery_zone/view/homescreen.dart';
import 'package:gallery_zone/view/imageshow.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GalleryProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'opensans'
        ),
        routes: {
          "/":(context) => SplashScreen(),
          "home":(context) => Home_Screen(),
          "imgshow":(context) => ImageShow(),

        },
      ),
    ),
  );
}
