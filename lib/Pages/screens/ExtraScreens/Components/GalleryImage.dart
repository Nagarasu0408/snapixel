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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/IntroScreen_Image/GalleryImage/Image1.jpg"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 97,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image:  AssetImage(
                                "assets/IntroScreen_Image/GalleryImage/Image2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 97,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image:  AssetImage(
                                "assets/IntroScreen_Image/GalleryImage/Image3.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 97,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image:  AssetImage(
                            "assets/IntroScreen_Image/GalleryImage/Image4.jpg"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                height: 97,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/IntroScreen_Image/GalleryImage/Image5.jpg"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                height: 97,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(
                          "assets/IntroScreen_Image/GalleryImage/Image6.webp"),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
