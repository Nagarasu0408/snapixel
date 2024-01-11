
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
