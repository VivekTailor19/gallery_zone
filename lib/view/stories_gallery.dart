import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/gallery_provider.dart';

class VideosGallery extends StatefulWidget {
  const VideosGallery({Key? key}) : super(key: key);

  @override
  State<VideosGallery> createState() => _VideosGalleryState();
}

class _VideosGalleryState extends State<VideosGallery> {

  GalleryProvider? gpT ;
  GalleryProvider? gpF ;

  @override
  Widget build(BuildContext context) {

    gpT = Provider.of<GalleryProvider>(context,listen: true);
    gpF = Provider.of<GalleryProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.black,
        // appBar: AppBar(backgroundColor: Colors.white,
        //   elevation: 0,
        //   title: Text("Stories",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
        //   actions: [
        //
        //
        //     Icon(Icons.slow_motion_video,color: Colors.lightBlue,size: 25),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 10),
        //       child: Icon(Icons.more_vert_rounded,color: Colors.lightBlue,size: 25),
        //     ),
        //
        //   ],
        // ),

        body: Center(
          child: Container(height: 500,width: 360,
            //color: Colors.transparent,


            child: PageView.builder(
              itemBuilder: (context, index) {

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset("${gpT!.allphotos[index]}",fit: BoxFit.contain,),
                );

              },
              pageSnapping: false,

              scrollDirection: Axis.horizontal,
              itemCount: 30,

            ),
          ),
        ),

      ),
    );
  }
}
