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

    int i = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: () {
          Navigator.pop(context);
        },),
        title: Text("Photo $i / ${gpT!.allphotos.length}"),
      ),
      bottomNavigationBar: BottomNavigationBar(


        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded,color: Colors.white,),label: "",backgroundColor: Colors.black,),
          BottomNavigationBarItem(icon: Icon(Icons.share,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.delete_forever_rounded,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert_rounded,color: Colors.white,),label: ""),
        ],
      ),
      body: Center(
        child: Container(height: 400,width: 360,
          color: Colors.transparent,


          child: PageView.builder(
            itemBuilder: (context, index) {

              return Image.asset("${gpT!.allphotos[index]}",fit: BoxFit.fill,);


            },
            controller: PageController(initialPage: i),
            scrollDirection: Axis.horizontal,
            itemCount: gpT!.allphotos.length,

          ),
        ),
      ),

    );
  }
}
