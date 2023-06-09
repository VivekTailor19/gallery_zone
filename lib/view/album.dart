import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/gallery_model.dart';
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
            // Expanded(
            //   child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2
            //   ),
            //     scrollDirection: Axis.vertical,
            //     children: [
            //       Albumname('Animal'),
            //       Albumname('Cities'),
            //       Albumname('Bing'),
            //       Albumname('Nature'),
            //       Albumname('Car'),
            //       Albumname('Movie'),
            //
            //     ],
            //   ),
            // ),


            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
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
                          InkWell(
                            onTap: () {


                            },

                            child: Container(
                              height: 140,
                              width: 160,
                              decoration: BoxDecoration(
                                //color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage("${gpF!.albumlist[index].imgpath}"),fit: BoxFit.fill,)
                              ),
                              //child: Image.asset("${gpF!.albumlist[index].imgpath}"),
                            ),
                          ),
                          Text("${gpF!.albumlist[index].name}",style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),)
                        ],
                      ),
                    ),
                  );

                    //Albumname(albumlist[index],index);
                },
                itemCount: gpF!.albumlist.length,
              ),
            ),



            // InkWell(onTap: () {
            //   Navigator.pushNamed(context, "imgshow");
            //
            //
            // },
            //   child: Albumname('Animal'),),


            // ElevatedButton(onPressed: () {
            //   gpT!.temprun();
            // }, child: Text("Button")),


          ],
        ),

    );
  }

  Widget Albumname(GalleryModel gm ,int index)
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
            InkWell(
              onTap: () {


              },

              child: Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("${gm.imgpath}"),fit: BoxFit.fill,)
                ),
              ),
            ),
            Text("${gm.name}",style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),)
          ],
        ),
      ),
    );
  }

}
