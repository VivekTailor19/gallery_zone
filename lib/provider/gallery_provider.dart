import 'package:flutter/cupertino.dart';
import 'package:gallery_zone/view/photos_gallery.dart';
import 'package:gallery_zone/view/album.dart';
import 'package:gallery_zone/view/videos_gallery.dart';

class GalleryProvider extends ChangeNotifier
{
  List<Widget> screen = [
      PhotosGallery(),
      VideosGallery(),
      StoriesGallery()

    ];

  int selindex = 0;
  void selectscreen(int index)
  {
    selindex = index;
    notifyListeners();
  }

  List<String> animallist = [
    "assets/images/animal/animal (1).jpg",
    "assets/images/animal/animal (2).jpg",
    "assets/images/animal/animal (3).jpg",
    "assets/images/animal/animal (4).jpg",
    "assets/images/animal/animal (5).jpg",
    "assets/images/animal/animal (6).jpg",
    "assets/images/animal/animal (7).jpg",
    "assets/images/animal/animal (8).jpg",
    "assets/images/animal/animal (9).jpg",
    "assets/images/animal/animal (10).jpg",
    "assets/images/animal/animal (11).jpg",
    "assets/images/animal/animal (12).jpg",
    "assets/images/animal/animal (13).jpg",
    "assets/images/animal/animal (14).jpg",
    "assets/images/animal/animal (15).jpg",
    "assets/images/animal/animal (16).jpg",
    "assets/images/animal/animal (17).jpg",
    "assets/images/animal/animal (18).jpg",
  ];
  List<String> binglist = [];




}