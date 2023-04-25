import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_zone/provider/gallery_provider.dart';
import 'package:gallery_zone/splashscreen/splashscreen.dart';
import 'package:gallery_zone/view/photos_gallery.dart';
import 'package:gallery_zone/view/album.dart';
import 'package:gallery_zone/view/videos_gallery.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {


  GalleryProvider? gpT ;
  GalleryProvider? gpF ;

  @override
  Widget build(BuildContext context) {

    gpT = Provider.of<GalleryProvider>(context,listen: true);
    gpF = Provider.of<GalleryProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            gpF!.selectscreen(value);
          },
          currentIndex: gpT!.selindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.photo_library_outlined),label: "Photos"),
            BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined),label: "Videos"),
            BottomNavigationBarItem(icon: Icon(Icons.my_library_add_outlined),label: "Album"),
          ],


        ),
        body: gpT!.screen[gpT!.selindex],

      ),
    );
  }
}
