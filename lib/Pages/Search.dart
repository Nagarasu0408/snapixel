import 'package:flutter/material.dart';
import 'package:snapixel/Components/Custom_SearchBar.dart';

class Search extends StatelessWidget {
  Search({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyGridView(),
    );
  }
}

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  List<int> items = List.generate(100, (index) => index);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      const SizedBox(height: 45,),
        Custom_SearchBar(
          controller: searchController,
          hintText: 'Enter search term...',
          onChanged: (value) {
            setState(() {
              // Filter items based on the search term
              items = List.generate(100, (index) => index)
                  .where((element) =>
                      element.toString().contains(value.toLowerCase()))
                  .toList();
            });
          },
        ),
        const SizedBox(height: 25,),
        Expanded(
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 3.0),
                child: Container(
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/colorful-heart-air-balloon-shape-collection-concept-isolated-color-background-beautiful-heart-ball-event_90220-1047.jpg?w=1060&t=st=1704874382~exp=1704874982~hmac=8387fa7e89d84cf4f619ff74144e2fe28557b6e1386d9535a630d64faefcc228'),fit: BoxFit.cover), color: Colors.blue.shade50,),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
