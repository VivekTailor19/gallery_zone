import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/gallery_provider.dart';

class PhotosGallery extends StatefulWidget {
  const PhotosGallery({Key? key}) : super(key: key);

  @override
  State<PhotosGallery> createState() => _PhotosGalleryState();
}

class _PhotosGalleryState extends State<PhotosGallery> {

  GalleryProvider? gpT ;
  GalleryProvider? gpF ;

  @override
  Widget build(BuildContext context) {

    gpT = Provider.of<GalleryProvider>(context,listen: true);
    gpF = Provider.of<GalleryProvider>(context,listen: false);


    return Scaffold(
      body: GridView.builder(
        itemCount: gpF!.allphotos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,

        ),
          itemBuilder: (context, index) {
           return Image.asset("${gpT!.allphotos[index]}",height: 80,width: 80,fit:BoxFit.fill,);
          },
      ),
    );
  }



}
