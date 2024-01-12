import 'package:flutter/material.dart';
import 'dart:math' as math;

class Post extends StatefulWidget {
  final String imageURL;
  final String username;
  final String subtitle;
  final String userDescription;

   const Post(
      {super.key,
      required this.imageURL,
      required this.username,
      required this.subtitle, required this.userDescription});

  @override
  State<Post> createState() => _PostItemState();
}

class _PostItemState extends State<Post> {
   bool userAdd=false;
   bool pin=false;

  void addUser(){
    setState(() {
      userAdd=!userAdd;
    });
  }
   void pinUser(){
     setState(() {
       pin=!pin;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white.withOpacity(.15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment:Alignment(.9,0),
                    child: Stack(
                        alignment: Alignment.center,
                        children:[
                      Container(
                        height:50,
                        width: 50,
                        decoration: pin?BoxDecoration(color: Colors.blue.withOpacity(.1),shape: BoxShape.circle):BoxDecoration(color: Colors.white12,shape: BoxShape.circle),),
                      GestureDetector(
                        onTap: pinUser,
                        child: Transform.rotate(
                          angle:90 * math.pi / 360,
                            child: pin?const Icon(Icons.push_pin_rounded,size: 20,color: Colors.blue,):const Icon(Icons.push_pin_outlined,size: 20,color: Colors.white,),
                        ),
                      ),
                        ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.imageURL), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.white.withOpacity(.35), width: 2)),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    widget.username,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    widget.subtitle,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   SizedBox(
                    height: 100,
                    width: 300,
                    child: Text(
                        widget.userDescription.length > 100
                            ? '${widget.userDescription.substring(0, widget.userDescription.length)}...'
                            : widget.userDescription,
                      style:const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding:const EdgeInsets.symmetric(horizontal: 20),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: addUser,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: userAdd? BoxDecoration(shape: BoxShape.circle,color: Colors.lightGreenAccent.withOpacity(.75)):const BoxDecoration(shape: BoxShape.circle,color: Colors.white30),
                                child:userAdd?const Icon(
                                  Icons.check,
                                  size: 25,
                                  color: Colors.white,
                                ):const Icon(
                                  Icons.add_rounded,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.track_changes,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
