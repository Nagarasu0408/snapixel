/*

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Profile extends StatelessWidget {
  Profile({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                SizedBox(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1557053910-d9eadeed1c58?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTB8OTQ1MjQ5NHx8ZW58MHx8fHx8",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70),
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(7)),
                    child:  Text(
                      "User Name",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 25, fontFamily: 'Classic',letterSpacing: 2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 270, left: 330),
                  child: IconButton(
                    isSelected: true,
                    onPressed: () {
                      print('Edit Button Click');
                    },
                    icon: const Icon(
                      Icons.edit_outlined,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "2024",
                              style: TextStyle(
                                  fontFamily: 'Classic', fontSize: 25),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                  fontFamily: 'Classic',
                                  fontSize: 20,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        Container(
                          height: 65,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                        ),
                        const Column(
                          children: [
                            Text(
                              "2020",
                              style: TextStyle(
                                  fontFamily: 'Classic', fontSize: 25),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                  fontFamily: 'Classic',
                                  fontSize: 20,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      print('Taped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat_bubble_outline,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chat",
                                style: TextStyle(
                                    fontSize: 20, fontFamily: 'Classic'),
                              ),
                              Text(
                                "Modify Chat Settings",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Classic',
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                     print("");
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.privacy_tip_outlined,
                            size: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                    fontSize: 20, fontFamily: 'Classic'),
                              ),
                              Text(
                                "Details About our Service",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Classic',
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      print('Taped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_3_outlined,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Profile",
                                style: TextStyle(
                                    fontSize: 20, fontFamily: 'Classic'),
                              ),
                              Text(
                                "Update Your Profile",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Classic',
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      print('Taped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.control_camera,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 20, fontFamily: 'Classic'),
                              ),
                              Text(
                                "Password and Security",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Classic',
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){print('Click');},
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Log out",
                                style: TextStyle(
                                    fontSize: 20, fontFamily: 'Classic'),
                              ),
                              Text(
                                "See you Later",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Classic',
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Version 1.0.0.5',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Classic',
                        color: Colors.black26),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Profile> {
  bool like = false;

  void isLiked() {
    setState(() {
      like = !like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.5),
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
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white30),
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.track_changes,
                        color: Colors.red.shade500,
                      ),
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
                                    color: Colors.white30),
                            padding: const EdgeInsets.all(10),
                            child: like
                                ? const Icon(Icons.favorite, color: Colors.red)
                                : const Icon(
                                    Icons.favorite,
                              color: Colors.white,
                                  ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white30),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(Icons.settings,color:Colors.white),
                        ),
                      ],
                    ),
                  ),
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
                            style: TextStyle(color: Colors.white, fontSize: 15),
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
                          style: TextStyle(color: Colors.white),
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
                      Text('Male',style: TextStyle(color:Colors.white),),
                      Row(
                        children: [
                          Icon(Icons.male, size: 17, color: Colors.white60),
                          Text(
                            'Gender',
                            style:
                                TextStyle(fontSize: 10, color: Colors.white60),
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
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
                const SizedBox(
                  child: Column(
                    children: [
                      Text('All',style: TextStyle(color:Colors.white),),
                      Row(
                        children: [
                          Icon(Icons.location_on_sharp,
                              size: 17, color: Colors.white60),
                          Text(
                            'Location',
                            style:
                                TextStyle(fontSize: 10, color: Colors.white60),
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
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
                const SizedBox(
                  child: Column(
                    children: [
                      Text('30-50',style: TextStyle(color:Colors.white),),
                      Row(
                        children: [
                          Icon(
                            Icons.accessibility_new,
                            size: 17,
                            color: Colors.white60,
                          ),
                          Text(
                            'Age',
                            style:
                                TextStyle(fontSize: 10, color: Colors.white60),
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
                    "Peaky Blinders is a crime drama centred on a family of mixed Irish Traveller and Romani origins based in Birmingham, England, starting in 1919, several months after the end of the First World War.",style: TextStyle(color:Colors.white),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  child: Column(
                    children: [
                      Text('10k',style: TextStyle(color:Colors.white),),
                      Row(
                        children: [
                          Icon(Icons.card_giftcard_outlined,
                              size: 17, color: Colors.white60),
                          Text(
                            'Appreciate',
                            style:
                                TextStyle(fontSize: 10, color: Colors.white60),
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
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
                const SizedBox(
                  child: Column(
                    children: [
                      Text('500k',style:TextStyle(color:Colors.white),),
                      Row(
                        children: [
                          Icon(
                            Icons.accessibility_new,
                            size: 17,
                            color: Colors.white60,
                          ),
                          Text(
                            ' credit Points',
                            style:
                                TextStyle(fontSize: 10, color: Colors.white60),
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
                color: Colors.white.withOpacity(1),
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
                  margin: const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://ichef.bbci.co.uk/images/ic/640x360/p07l7vms.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.pink,
                  ),
                ),
                Container(
                  height: 300,
                  margin: const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://c.files.bbci.co.uk/9AD2/production/_122743693_7eb2e8b5-4b91-4ea6-b617-4e105762f67f.png"),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 300,
                  margin: const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://d1fufvy4xao6k9.cloudfront.net/images/landings//peaky-b-mob-2.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.pink,
                  ),
                ),
                Container(
                  height: 300,
                  margin: const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.guim.co.uk/img/media/b4671b518cf9f81e4343c5921a6210141fd9f8fa/0_92_4284_2570/master/4284.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=fd58b7ac8640b27121c6367f206f7e68"),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 300,
                  margin: const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/originals/a7/d2/90/a7d290219d0b9d58e51230f444ebd586.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.pink,
                  ),
                ),
                Container(
                  height: 300,
                  margin: const EdgeInsets.all(1),
                  padding: const EdgeInsets.all(95),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/1200x/ed/60/e3/ed60e370b882551be7592ba9056eead5.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 240,
                  padding: const EdgeInsets.all(192),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://th-thumbnailer.cdn-si-edu.com/0x25-9hSox5butxNUNcg5F-Ak2I=/fit-in/1072x0/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/2e/91/2e915881-ee4e-44ec-bae0-34ef2c931951/article-2417281-1bc0ef33000005dc-300_636x382.jpg"),
                        fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
