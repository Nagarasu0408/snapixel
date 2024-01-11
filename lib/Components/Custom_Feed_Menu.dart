import 'package:flutter/material.dart';

class Custom_Feed_menu extends StatelessWidget {
  final bool isLiked;
  final void Function()? onTap;
   Custom_Feed_menu({super.key, this.onTap, required this.isLiked});


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
       const SizedBox(height: 35,),
        GestureDetector(
          onTap: onTap,
            child:
            isLiked?Icon(Icons.favorite_rounded,size: 35,color: Colors.red.shade500,):Icon(Icons.favorite_border_rounded,size: 30,color: Colors.redAccent,),),
        const Text("Like",style: TextStyle(color: Colors.red),),
        const SizedBox(height: 35,),
        const Icon(Icons.how_to_vote,size: 35,color: Colors.white),
        const Text("Vote",style: TextStyle(color: Colors.white),),
        const SizedBox(height: 35,),
        const Icon(Icons.share,size: 35,color: Colors.white,),
        const Text("Share",style: TextStyle(color: Colors.white)),
        const SizedBox(height: 35,),
        const Icon(Icons.download,size: 35,color: Colors.white,),
        const Text("Download",style: TextStyle(color: Colors.white),),
        const SizedBox(height: 35,),
      ],
    );
  }
}
