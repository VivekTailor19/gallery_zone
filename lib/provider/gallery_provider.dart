import 'package:flutter/cupertino.dart';
import 'package:gallery_zone/view/photos_gallery.dart';
import 'package:gallery_zone/view/stories_gallery.dart';
import 'package:gallery_zone/view/videos_gallery.dart';

class GalleryProvider extends ChangeNotifier
{
  List<Widget> screen = [ PhotosGallery(),VideosGallery(),StoriesGallery() ];

  int selindex = 0;
  void selectscreen(int index)
  {
    selindex = index;
    notifyListeners();
  }




}