
import 'package:flutter/material.dart';
import 'package:snapixel/Components/Custom_Feed_Menu.dart';
import 'package:snapixel/Pages/Index.dart';

class Trends extends StatefulWidget {
   Trends({Key? key});

  @override
  State<Trends> createState() => _TrendsState();
}

class _TrendsState extends State<Trends> {
  void goToHome(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BottomNavigation()),
    );
  }

  bool _isliked=false;

  void isLikedButton() {
    setState(() {
      _isliked = !_isliked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.vertical,
          children: [
            _buildPage(
              'https://images.unsplash.com/photo-1611451444023-7fe9d86fe1d0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXQlMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D',
            ),
            _buildPage(
              'https://img.freepik.com/premium-photo/beautiful-indian-woman-close-up-generative-ai_849906-5592.jpg',
            ),
            _buildPage(
              'https://i.pinimg.com/originals/b3/a2/65/b3a265c2f2302efa900f3e34a7205361.jpg',
            ),
            _buildPage(
              'https://imgupscaler.com/images/samples/animal-after.webp',
            ),
          ],
        ),
        Positioned(
          top: 20,
          left: 20,
          child: GestureDetector(
            onTap: () => goToHome(context),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPage(String imageUrl) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Hello'),
            Text('Hello'),
          ],
        ),
        Container(
          alignment: Alignment(0.9, 0),
          child: Custom_Feed_menu(isLiked: _isliked,onTap:isLikedButton),
        ),
      ],
    );
  }
}
