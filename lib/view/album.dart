import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/gallery_provider.dart';

class StoriesGallery extends StatefulWidget {
  const StoriesGallery({Key? key}) : super(key: key);

  @override
  State<StoriesGallery> createState() => _StoriesGalleryState();
}

class _StoriesGalleryState extends State<StoriesGallery> {

  GalleryProvider? gpT ;
  GalleryProvider? gpF ;


  @override
  Widget build(BuildContext context) {

    gpT = Provider.of<GalleryProvider>(context,listen: true);
    gpF = Provider.of<GalleryProvider>(context,listen: false);


    return Scaffold(
        body: Column(
          children: [
            // GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 2
            // ),
            //   scrollDirection: Axis.vertical,
            //   children: [
            //
            //   ],
            // ),
            Row(
              children: [
                InkWell(onTap: () {
                  Navigator.pushNamed(context, "imgshow");


                },
                  child: Albumname('Animal'),),

                Albumname('Cities'),
              ],
            ),
            Row(
              children: [
                Albumname('Bing'),Albumname('Nature'),
              ],
            ),

            ElevatedButton(onPressed: () {
              gpT!.temprun();
            }, child: Text("Button")),


          ],
        ),

    );
  }

  Widget Albumname(String name)
  {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 190,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage("assets/album1.png"),fit: BoxFit.fill,)
              ),
            ),
            Text("$name",style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),)
          ],
        ),
      ),
    );
  }

}
