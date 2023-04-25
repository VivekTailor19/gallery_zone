import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/gallery_provider.dart';

class ImageShow extends StatefulWidget {
  const ImageShow({Key? key}) : super(key: key);

  @override
  State<ImageShow> createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {

  GalleryProvider? gpT ;
  GalleryProvider? gpF ;

  @override
  Widget build(BuildContext context) {

    gpT = Provider.of<GalleryProvider>(context,listen: true);
    gpF = Provider.of<GalleryProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: () {
          Navigator.pop(context);
        },),
        title: Text("Photo 1"),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded,color: Colors.red,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.share,color: Colors.red,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.delete_forever_rounded,color: Colors.red,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded,color: Colors.red,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert_rounded,color: Colors.red,),label: ""),
        ],
      ),
      body: Center(
        child: Container(height: 400,width: 360,


          child: PageView.builder(
            itemBuilder: (context, index) {

              return Image.asset("${gpT!.animallist[index]}",fit: BoxFit.contain,);

            },
            scrollDirection: Axis.horizontal,
            itemCount: gpT!.animallist.length,

          ),
        ),
      ),

    );
  }
}
