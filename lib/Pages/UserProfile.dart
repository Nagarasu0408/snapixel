import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool like = false;

  void isLiked() {
    setState(() {
      like = !like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black12),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(Icons.arrow_back_ios_outlined),
                    ),
                  ),
                  SizedBox(
                      child: Row(
                    children: [
                      GestureDetector(
                        onTap: isLiked,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: like
                              ? BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade100)
                              : const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12),
                          padding: const EdgeInsets.all(10),
                          child: like
                              ? const Icon(Icons.favorite, color: Colors.red)
                              : const Icon(
                                  Icons.favorite,
                                ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black12),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(Icons.share),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: 170,
                    width: 130,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://thegarrison.nl/cdn/shop/articles/hoe-word-je-een-echte-peaky-blinder.webp?v=1698973781'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.historic-uk.com/wp-content/uploads/2019/02/peaky-blinders-4.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Peaky Blinder",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 110,
                        width: 200,
                        child: Text(
                          'A gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  child: Column(
                    children: [
                      Text('Male'),
                      Row(
                        children: [
                          Icon(Icons.male, size: 17, color: Colors.black45),
                          Text(
                            'Gender',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black45),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 1),
                  ),
                ),
                const SizedBox(
                  child: Column(
                    children: [
                      Text('All'),
                      Row(
                        children: [
                          Icon(Icons.location_on_sharp,
                              size: 17, color: Colors.black45),
                          Text(
                            'Location',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black45),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 1),
                  ),
                ),
                const SizedBox(
                  child: Column(
                    children: [
                      Text('30-50'),
                      Row(
                        children: [
                          Icon(
                            Icons.accessibility_new,
                            size: 17,
                            color: Colors.black45,
                          ),
                          Text(
                            'Age',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black45),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: SizedBox(
                child: Text(
                    "Peaky Blinders is a crime drama centred on a family of mixed Irish Traveller and Romani origins based in Birmingham, England, starting in 1919, several months after the end of the First World War."),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  child: Column(
                    children: [
                      Text('10k'),
                      Row(
                        children: [
                          Icon(Icons.card_giftcard_outlined,
                              size: 17, color: Colors.black45),
                          Text(
                            'Appreciate',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black45),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 1),
                  ),
                ),
                const SizedBox(
                  child: Column(
                    children: [
                      Text('500k'),
                      Row(
                        children: [
                          Icon(
                            Icons.accessibility_new,
                            size: 17,
                            color: Colors.black45,
                          ),
                          Text(
                            ' credit Points',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black45),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.1),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const Column(
                      children: [
                        Text(
                          "100",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Follow',
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 1),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const Column(
                      children: [
                        Text(
                          "7.5M",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.trending_up,
                    color: Colors.white,
                    size: 25,
                  ),
                  Container(
                    height: 40,
                    width: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white30, width: 1),
                    ),
                  ),
                  const Icon(
                    Icons.history,
                    color: Colors.white,
                    size: 25,
                  ),
                  Container(
                    height: 40,
                    width: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white30, width: 1),
                    ),
                  ),
                  const Icon(
                    Icons.widgets,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 300,
                  margin:const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration:const BoxDecoration(image: DecorationImage(image: NetworkImage("https://ichef.bbci.co.uk/images/ic/640x360/p07l7vms.jpg"),fit: BoxFit.cover),  color: Colors.pink, ),
                ),
                Container(
                  height: 300,
                  margin:const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration:const BoxDecoration(image: DecorationImage(image: NetworkImage("https://c.files.bbci.co.uk/9AD2/production/_122743693_7eb2e8b5-4b91-4ea6-b617-4e105762f67f.png"),fit: BoxFit.cover),  color: Colors.blue, ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 300,
                  margin:const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage("https://d1fufvy4xao6k9.cloudfront.net/images/landings//peaky-b-mob-2.jpg"),fit: BoxFit.cover),  color: Colors.pink, ),
                ),
                Container(
                  height: 300,
                  margin:const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration:const  BoxDecoration(image: DecorationImage(image: NetworkImage("https://i.guim.co.uk/img/media/b4671b518cf9f81e4343c5921a6210141fd9f8fa/0_92_4284_2570/master/4284.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=fd58b7ac8640b27121c6367f206f7e68"),fit: BoxFit.cover),  color: Colors.blue, ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 300,
                  margin:const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/a7/d2/90/a7d290219d0b9d58e51230f444ebd586.jpg"),fit: BoxFit.cover),  color: Colors.pink, ),
                ),
                Container(
                  height: 300,
                  margin:const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration:const  BoxDecoration(image: DecorationImage(image: NetworkImage("https://i.pinimg.com/1200x/ed/60/e3/ed60e370b882551be7592ba9056eead5.jpg"),fit: BoxFit.cover),  color: Colors.blue, ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 240,
                  padding: const EdgeInsets.all(192),
                  decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage("https://th-thumbnailer.cdn-si-edu.com/0x25-9hSox5butxNUNcg5F-Ak2I=/fit-in/1072x0/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/2e/91/2e915881-ee4e-44ec-bae0-34ef2c931951/article-2417281-1bc0ef33000005dc-300_636x382.jpg"),fit: BoxFit.contain),),
                ),

              ],
            ),
          ],
        ),
      ),

      /*SizedBox(
        child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaY: 30,sigmaX: 30),
            child: Image.network('https://www.historic-uk.com/wp-content/uploads/2019/02/peaky-blinders-4.jpg',fit: BoxFit.cover,)),
      ),*/
    );
  }
}
