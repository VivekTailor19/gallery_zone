import 'package:flutter/cupertino.dart';
import 'package:gallery_zone/view/photos_gallery.dart';
import 'package:gallery_zone/view/album.dart';
import 'package:gallery_zone/view/videos_gallery.dart';

import '../model/gallery_model.dart';

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

  List animallist = [
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

  List<String> binglist = [
    "assets/images/bing/bing (1).jpg",
    "assets/images/bing/bing (2).jpg",
    "assets/images/bing/bing (3).jpg",
    "assets/images/bing/bing (4).jpg",
    "assets/images/bing/bing (5).jpg",
    "assets/images/bing/bing (6).jpg",
    "assets/images/bing/bing (7).jpg",
    "assets/images/bing/bing (8).jpg",
    "assets/images/bing/bing (9).jpg",
    
  ];

  List<String> carlist = [
    "assets/images/car/car (1).jpg",
    "assets/images/car/car (2).jpg",
    "assets/images/car/car (3).jpg",
    "assets/images/car/car (4).jpg",
    "assets/images/car/car (5).jpg",
    "assets/images/car/car (6).jpg",
    "assets/images/car/car (7).jpg",
    "assets/images/car/car (8).jpg",
    "assets/images/car/car (9).jpg",
    "assets/images/car/car (10).jpg",
    "assets/images/car/car (11).jpg",
    "assets/images/car/car (12).jpg",
    "assets/images/car/car (13).jpg",
    "assets/images/car/car (14).jpg",
    "assets/images/car/car (15).jpg",
    "assets/images/car/car (16).jpg",
    "assets/images/car/car (17).jpg",
  ];

  List<String> citieslist = [
    "assets/images/cities/cities (1).jpg",
    "assets/images/cities/cities (2).jpg",
    "assets/images/cities/cities (3).jpg",
    "assets/images/cities/cities (4).jpg",
    "assets/images/cities/cities (5).jpg",
    "assets/images/cities/cities (6).jpg",
    "assets/images/cities/cities (7).jpg",
    "assets/images/cities/cities (8).jpg",
    "assets/images/cities/cities (9).jpg",

  ];
  
  List<String> movielist = [
    "assets/images/movie/movie (1).jpg",
    "assets/images/movie/movie (2).jpg",
    "assets/images/movie/movie (3).jpg",
    "assets/images/movie/movie (4).jpg",
    "assets/images/movie/movie (5).jpg",
    "assets/images/movie/movie (6).jpg",
    "assets/images/movie/movie (7).jpg",
    "assets/images/movie/movie (8).jpg",
    "assets/images/movie/movie (9).jpg",
  ];

  List<String> naturelist = [
    "assets/images/nature/nature (1).jpg",
    "assets/images/nature/nature (2).jpg",
    "assets/images/nature/nature (3).jpg",
    "assets/images/nature/nature (4).jpg",
    "assets/images/nature/nature (5).jpg",
    "assets/images/nature/nature (6).jpg",
    "assets/images/nature/nature (7).jpg",
    "assets/images/nature/nature (8).jpg",
    "assets/images/nature/nature (9).jpg",
    "assets/images/nature/nature (10).jpg",
    "assets/images/nature/nature (11).jpg",
    "assets/images/nature/nature (12).jpg",
    "assets/images/nature/nature (13).jpg",
    "assets/images/nature/nature (14).jpg",
    "assets/images/nature/nature (15).jpg",
    "assets/images/nature/nature (16).jpg",
    "assets/images/nature/nature (17).jpg",
    "assets/images/nature/nature (18).jpg",
  ];

  List<String> allphotos = [
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

    "assets/images/bing/bing (1).jpg",
    "assets/images/bing/bing (2).jpg",
    "assets/images/bing/bing (3).jpg",
    "assets/images/bing/bing (4).jpg",
    "assets/images/bing/bing (5).jpg",
    "assets/images/bing/bing (6).jpg",
    "assets/images/bing/bing (7).jpg",
    "assets/images/bing/bing (8).jpg",
    "assets/images/bing/bing (9).jpg",

    "assets/images/car/car (1).jpg",
    "assets/images/car/car (2).jpg",
    "assets/images/car/car (3).jpg",
    "assets/images/car/car (4).jpg",
    "assets/images/car/car (5).jpg",
    "assets/images/car/car (6).jpg",
    "assets/images/car/car (7).jpg",
    "assets/images/car/car (8).jpg",
    "assets/images/car/car (9).jpg",
    "assets/images/car/car (10).jpg",
    "assets/images/car/car (11).jpg",
    "assets/images/car/car (12).jpg",
    "assets/images/car/car (13).jpg",
    "assets/images/car/car (14).jpg",
    "assets/images/car/car (15).jpg",
    "assets/images/car/car (16).jpg",
    "assets/images/car/car (17).jpg",

    "assets/images/cities/cities (1).jpg",
    "assets/images/cities/cities (2).jpg",
    "assets/images/cities/cities (3).jpg",
    "assets/images/cities/cities (4).jpg",
    "assets/images/cities/cities (5).jpg",
    "assets/images/cities/cities (6).jpg",
    "assets/images/cities/cities (7).jpg",
    "assets/images/cities/cities (8).jpg",
    "assets/images/cities/cities (9).jpg",

    "assets/images/movie/movie (1).jpg",
    "assets/images/movie/movie (2).jpg",
    "assets/images/movie/movie (3).jpg",
    "assets/images/movie/movie (4).jpg",
    "assets/images/movie/movie (5).jpg",
    "assets/images/movie/movie (6).jpg",
    "assets/images/movie/movie (7).jpg",
    "assets/images/movie/movie (8).jpg",
    "assets/images/movie/movie (9).jpg",

    "assets/images/nature/nature (1).jpg",
    "assets/images/nature/nature (2).jpg",
    "assets/images/nature/nature (3).jpg",
    "assets/images/nature/nature (4).jpg",
    "assets/images/nature/nature (5).jpg",
    "assets/images/nature/nature (6).jpg",
    "assets/images/nature/nature (7).jpg",
    "assets/images/nature/nature (8).jpg",
    "assets/images/nature/nature (9).jpg",
    "assets/images/nature/nature (10).jpg",
    "assets/images/nature/nature (11).jpg",
    "assets/images/nature/nature (12).jpg",
    "assets/images/nature/nature (13).jpg",
    "assets/images/nature/nature (14).jpg",
    "assets/images/nature/nature (15).jpg",
    "assets/images/nature/nature (16).jpg",
    "assets/images/nature/nature (17).jpg",
    "assets/images/nature/nature (18).jpg",

  ];


  List<GalleryModel> albumlist = [
    GalleryModel(name: "Animals",imgpath: "assets/images/pack/animalpack.jpg"),
    GalleryModel(name: "Bing",imgpath: "assets/images/pack/bingpack.jpg"),
    GalleryModel(name: "Nature",imgpath: "assets/images/pack/naturepack.jpg"),
    GalleryModel(name: "Cities",imgpath: "assets/images/pack/citiespack.jpg"),
    GalleryModel(name: "Car",imgpath: "assets/images/pack/carpack.jpg"),
  ];




















 

  // void temprun()
  // {
  //   for(int i = 1 ; i<19 ; i++)
  //     {
  //       print('\"assets/images/nature/nature ($i).jpg\",');
  //     }
  // }




}