/*
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
*/





import 'package:flutter/material.dart';

import '../Components/Custom_SearchBar.dart';
import '../Components/PostItem.dart';
import 'UserProfile.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController controller=TextEditingController();
  void onTap(context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        child:
        Column(
          children: [
            /*  const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 55,
                      width: 55,
                      decoration:  BoxDecoration(shape: BoxShape.circle,color: Colors.black38,border: Border.all(color: Colors.white,width: 2),image: DecorationImage(image: NetworkImage('https://www.behindwoods.com/tamil-actor/arjun/arjun-stills-photos-pictures-12.jpg'),fit: BoxFit.cover),),
                    ),
                    const Text(
                      "Arjun",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),*/
            const SizedBox(height: 50,),
            Custom_SearchBar(controller: controller, hintText: "What You want"),
            const Post(
              imageURL:
              'https://i.pinimg.com/736x/0e/a2/1a/0ea21a68dc0f9a85540f6c51938bbd8e.jpg',
              username: 'Parthiban',
              subtitle: 'Leo das', userDescription: 'விஜய் தனது 10ஆவது வயதில் வெற்றி (1984) என்ற திரைப்படத்தில் குழந்தை நடிகராக அறிமுகம் ஆனார்...',
            ),
            const Post(
              imageURL:
              'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQPJNKazljl7wYul1xHqWLFtc1xZUKDug5zG5K4Zixl0r_1eBSzF-_s7_j1rMM_BWyqlR1tY0WEp3y6gkk',
              username: 'Taissa farmiga',
              subtitle: 'Sister irene',
              userDescription: 'Taissa Farmiga is an American actress. Her numerous appearances in horror films have established her as a scream queen,alongside her older sister vera..',
            ),
            GestureDetector(
              onTap: ()=>onTap(context),
              child: const Post(
                imageURL:
                'https://peakyblinders.tv/wp-content/uploads/2022/11/Kings-ransom.png',
                username: 'Peaky Blinders',
                subtitle: 'Netflix', userDescription: 'Peaky Blinders is a crime drama centred on a family of mixed Irish Traveller and Romani origins based in Birmingham, England, starting in 1919, several months after the end of the First World War. It centres on the Peaky Blinders street gang and their ambitious, cunning crime boss Tommy Shelby.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
