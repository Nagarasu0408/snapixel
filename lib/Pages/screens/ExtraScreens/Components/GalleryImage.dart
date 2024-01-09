import 'package:flutter/material.dart';

class GalleryImage extends StatelessWidget {
  const GalleryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image:const DecorationImage(image: NetworkImage("https://smartphotography.in/wp-content/uploads/2022/02/SWPA-national-award-winner.jpg"),fit: BoxFit.cover)),
            ),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 97,
                  width: 100,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image:const DecorationImage(image: NetworkImage("https://www.all-about-photo.com/images/articles/ART-969-2.jpg"),fit: BoxFit.cover)),

                ),
               const SizedBox(height: 6,),
                Container(
                  height: 97,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image:const DecorationImage(image: NetworkImage("https://experimentwithnature.com/wp-content/uploads/2012/02/earth3.jpg"),fit: BoxFit.cover)),

                ),
              ],
            )
          ],
        ),
         const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 97,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image:const DecorationImage(image: NetworkImage("https://photographyhero.com/wp-content/uploads/2017/08/space-001.jpg"),fit: BoxFit.cover)),

              ),
              const SizedBox(width: 6,),
              Container(
                height: 97,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image:const DecorationImage(image: NetworkImage("https://iso.500px.com/wp-content/uploads/2015/05/fuego1_cover.jpg"),fit: BoxFit.cover)),

              ),
             const SizedBox(width: 6,),
              Container(
                height: 97,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image:const DecorationImage(image: NetworkImage("https://www.nativeplanet.com/img/2018/08/landscapebeautiful-1533110307.jpg"),fit: BoxFit.cover)),

              ),
            ],
          )
      ],),
    );
  }
}

