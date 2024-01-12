/*

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
*/


import 'package:flutter/material.dart';

import 'Index.dart';

class CardItem {
  final String imageUrl;
  final String profileImageUrl;
  final String username;
  final String description;
  bool isFollowing;
  bool isLiked;

  CardItem({
    required this.imageUrl,
    required this.profileImageUrl,
    required this.username,
    required this.description,
    this.isFollowing = false,
    this.isLiked = false,
  });
}



class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {

  /*Future<void> _downloadImage(CardItem item) async {
    try {
      // Get the temporary directory for storing the downloaded image
      Directory tempDir = await getTemporaryDirectory();
      String tempPath = tempDir.path;

      // Download the image from the URL
      http.Response response = await http.get(Uri.parse(item.imageUrl));
      List<int> bytes = response.bodyBytes;

      // Save the image to the temporary directory
      File file = File('$tempPath/${item.username}_image.jpg');
      await file.writeAsBytes(bytes);

      // Show a toast message indicating successful download
      const platform = MethodChannel('channel/toast');
      await platform.invokeMethod('showToast', 'Image downloaded: ${file.path}');
    } catch (e) {
      print('Error downloading image: $e');
    }
  }*/

  /* Future<void> _downloadImage(CardItem item) async {
    try {
      // Get the documents directory
      Directory documentsDir = await getApplicationDocumentsDirectory();
      String documentsPath = documentsDir.path;

      // Create a 'downloads' directory within the documents directory
      String downloadsPath = '$documentsPath/downloads';
      Directory downloadsDir = Directory(downloadsPath);
      if (!downloadsDir.existsSync()) {
        downloadsDir.createSync();
      }

      // Download the image from the URL
      http.Response response = await http.get(Uri.parse(item.imageUrl));
      List<int> bytes = response.bodyBytes;

      // Save the image to the 'downloads' directory
      File file = File('$downloadsPath/${item.username}_image.jpg');
      await file.writeAsBytes(bytes);

      // Show a toast message indicating successful download
      const platform = MethodChannel('channel/toast');
      await platform.invokeMethod('showToast', 'Image downloaded: ${file.path}');
    } catch (e) {
      print('Error downloading image: $e');
    }
  }*/
  
  
  

  final List<CardItem> CardItems =
  [
    CardItem(
      imageUrl:
      'https://digitalartwithwalsh.weebly.com/uploads/8/4/8/9/84892840/impossible9-orig.jpg',
      profileImageUrl:
      'https://images.prismic.io/profilephotos/15306430-5a6d-4436-80eb-dcf42533233d_wellington-new-zealand-profile-photos-portrait-photographer-models-headshots-dashing.jpg?ixlib=vue-2.9.0&auto=format%2C%20compress',
      username: 'Oms_james',
      description:
      'Nuts are actually fruits. They are defined as dry, single-seeded fruits that have high oil content. They are usually enclosed in a leathery or solid outer layer. In botany terms, nuts are strictly a particular kind of dry fruit that has a single seed, a hard shell, and a protective husk.',
    ),
    CardItem(
      imageUrl:
      'https://img.freepik.com/free-photo/bird-colorful-colorful-flowers-generative-ai_206725-752.jpg?w=360&t=st=1704882994~exp=1704883594~hmac=17d2254f75cda0653d8848316dccd75c3b8f5494103c91dfc5cca16265f3f503',
      profileImageUrl:
      'https://i.pinimg.com/736x/2d/31/29/2d312946c6a7890e49a97f4dbda41931.jpg',
      username: 'John_kendy',
      description:
      'General features. Birds arose as warm-blooded, arboreal, flying creatures with forelimbs adapted for flight and hind limbs for perching. This basic plan has become so modified during the course of evolution that in some forms it is difficult to recognize.',
    ),
    CardItem(
      imageUrl:
      'https://img.freepik.com/free-photo/fashion-beautiful-girl-with-bright-make-up-among-eustomas_176420-718.jpg?w=360&t=st=1704883042~exp=1704883642~hmac=f6432edaff22d814aeb80e48f821177c38f2f29f2cfcea6d26f9c3e69c934342',
      profileImageUrl:
      'https://www.francisjtaylor.co.uk/wp-content/uploads/2021/06/Francis-J-Taylor.jpg',
      username: 'Johnny',
      description:
      'Models pose for artists, photographers, or customers to help advertise a variety of products, including clothing, cosmetics, food, and appliances. Models also work as a fit or fitting model, enabling the manufacturer or fashion designer to achieve the best fit for new styles.',
    ),
    CardItem(
      imageUrl:
      'https://images.unsplash.com/photo-1611451444023-7fe9d86fe1d0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXQlMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D',
      profileImageUrl:
      'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
      username: 'zodiac-Kelr',
      description:
      'Models pose for artists, photographers, or customers to help advertise a variety of products, including clothing, cosmetics, food, and appliances. Models also work as a fit or fitting model, enabling the manufacturer or fashion designer to achieve the best fit for new styles.',
    ),
    CardItem(
      imageUrl:
      'https://img.freepik.com/premium-photo/beautiful-indian-woman-close-up-generative-ai_849906-5592.jpg',
      profileImageUrl:
      'https://backcountrymagazine.com/wp-content/uploads/2017/12/creary_embed__2_2018.jpg',
      username: 'Snap_king',
      description:
      'Models pose for artists, photographers, or customers to help advertise a variety of products, including clothing, cosmetics, food, and appliances. Models also work as a fit or fitting model, enabling the manufacturer or fashion designer to achieve the best fit for new styles.',
    ),
    CardItem(
      imageUrl:
      'https://i.pinimg.com/originals/b3/a2/65/b3a265c2f2302efa900f3e34a7205361.jpg',
      profileImageUrl:
      'https://www.sony-asia.com/microsite/ilc/photographers/img/profile/th/dow/dow-inside-profile01.jpg',
      username: 'Park60g',
      description:
      'General features. Birds arose as warm-blooded, arboreal, flying creatures with forelimbs adapted for flight and hind limbs for perching. This basic plan has become so modified during the course of evolution that in some forms it is difficult to recognize.',
    ),
    CardItem(
      imageUrl: 'https://imgupscaler.com/images/samples/animal-after.webp',
      profileImageUrl:
      'https://www.sony-asia.com/microsite/ilc/photographers/img/profile/th/dow/dow-inside-profile01.jpg',
      username: 'Park6',
      description:
      'General features. Birds arose as warm-blooded, arboreal, flying creatures with forelimbs adapted for flight and hind limbs for perching. This basic plan has become so modified during the course of evolution that in some forms it is difficult to recognize.',
    ),


    CardItem(
      imageUrl:
      'https://digitalartwithwalsh.weebly.com/uploads/8/4/8/9/84892840/impossible9-orig.jpg',
      profileImageUrl:
      'https://images.prismic.io/profilephotos/15306430-5a6d-4436-80eb-dcf42533233d_wellington-new-zealand-profile-photos-portrait-photographer-models-headshots-dashing.jpg?ixlib=vue-2.9.0&auto=format%2C%20compress',
      username: 'Oms_james',
      description:
      'Nuts are actually fruits. They are defined as dry, single-seeded fruits that have high oil content. They are usually enclosed in a leathery or solid outer layer. In botany terms, nuts are strictly a particular kind of dry fruit that has a single seed, a hard shell, and a protective husk.',
    ),
    CardItem(
      imageUrl:
      'https://img.freepik.com/free-photo/bird-colorful-colorful-flowers-generative-ai_206725-752.jpg?w=360&t=st=1704882994~exp=1704883594~hmac=17d2254f75cda0653d8848316dccd75c3b8f5494103c91dfc5cca16265f3f503',
      profileImageUrl:
      'https://i.pinimg.com/736x/2d/31/29/2d312946c6a7890e49a97f4dbda41931.jpg',
      username: 'John_kendy',
      description:
      'General features. Birds arose as warm-blooded, arboreal, flying creatures with forelimbs adapted for flight and hind limbs for perching. This basic plan has become so modified during the course of evolution that in some forms it is difficult to recognize.',
    ),
    CardItem(
      imageUrl:
      'https://img.freepik.com/free-photo/fashion-beautiful-girl-with-bright-make-up-among-eustomas_176420-718.jpg?w=360&t=st=1704883042~exp=1704883642~hmac=f6432edaff22d814aeb80e48f821177c38f2f29f2cfcea6d26f9c3e69c934342',
      profileImageUrl:
      'https://www.francisjtaylor.co.uk/wp-content/uploads/2021/06/Francis-J-Taylor.jpg',
      username: 'Johnny',
      description:
      'Models pose for artists, photographers, or customers to help advertise a variety of products, including clothing, cosmetics, food, and appliances. Models also work as a fit or fitting model, enabling the manufacturer or fashion designer to achieve the best fit for new styles.',
    ),
    CardItem(
      imageUrl:
      'https://images.unsplash.com/photo-1611451444023-7fe9d86fe1d0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXQlMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D',
      profileImageUrl:
      'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
      username: 'zodiac-Kelr',
      description:
      'Models pose for artists, photographers, or customers to help advertise a variety of products, including clothing, cosmetics, food, and appliances. Models also work as a fit or fitting model, enabling the manufacturer or fashion designer to achieve the best fit for new styles.',
    ),
    CardItem(
      imageUrl:
      'https://img.freepik.com/premium-photo/beautiful-indian-woman-close-up-generative-ai_849906-5592.jpg',
      profileImageUrl:
      'https://backcountrymagazine.com/wp-content/uploads/2017/12/creary_embed__2_2018.jpg',
      username: 'Snap_king',
      description:
      'Models pose for artists, photographers, or customers to help advertise a variety of products, including clothing, cosmetics, food, and appliances. Models also work as a fit or fitting model, enabling the manufacturer or fashion designer to achieve the best fit for new styles.',
    ),
    CardItem(
      imageUrl:
      'https://i.pinimg.com/originals/b3/a2/65/b3a265c2f2302efa900f3e34a7205361.jpg',
      profileImageUrl:
      'https://www.sony-asia.com/microsite/ilc/photographers/img/profile/th/dow/dow-inside-profile01.jpg',
      username: 'Park60g',
      description:
      'General features. Birds arose as warm-blooded, arboreal, flying creatures with forelimbs adapted for flight and hind limbs for perching. This basic plan has become so modified during the course of evolution that in some forms it is difficult to recognize.',
    ),
    CardItem(
      imageUrl: 'https://imgupscaler.com/images/samples/animal-after.webp',
      profileImageUrl:
      'https://www.sony-asia.com/microsite/ilc/photographers/img/profile/th/dow/dow-inside-profile01.jpg',
      username: 'Park6',
      description:
      'General features. Birds arose as warm-blooded, arboreal, flying creatures with forelimbs adapted for flight and hind limbs for perching. This basic plan has become so modified during the course of evolution that in some forms it is difficult to recognize.',
    ),



  ];

  int currentIndex = 0;
  bool showFullDescription = false;
  bool isLiked = false;
  bool following = false;

  void onTapFollow() {
    setState(() {
      CardItems[currentIndex].isFollowing =
      !CardItems[currentIndex].isFollowing;
      following = !following;
    });
  }

  void isLikedButton() {
    setState(() {
      // Toggle the like status for the current user
      CardItems[currentIndex].isLiked = !CardItems[currentIndex].isLiked;
    });
  }

  void goToHome(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BottomNavigation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: CardItems.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return _buildPage(CardItems[index]);
            },
          ),
          Positioned(
            bottom: 50,
            child: GestureDetector(
              onTap: onTapFollow,
              child: _buildUserInfo(),
            ),
          ),
          /*Positioned(
            right: 15,
            bottom: 35,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Custom_Feed_menu(
                isLiked: isLiked,
                onTap: isLikedButton,
              ),
            ),
          ),*/
          Positioned(
            top: 50,
            left: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black38),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_sharp,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed:()=>goToHome(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

/*  Widget _buildPage(CardItem item) {
    return GestureDetector(
      onDoubleTap: () {
        setState(() {
          item.isLiked = !item.isLiked;
        });
      },
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.network(
          item.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }*/

  Widget _buildPage(CardItem item) {
    return GestureDetector(
      onDoubleTap: () {
        setState(() {
          item.isLiked = !item.isLiked;
        });
        // Timer(Duration(milliseconds: 700), () {
        //   item.isLiked = !item.isLiked;
        // });
      },
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Opacity(
            opacity: item.isLiked ? 1 : 0,
            child: const Center(
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 100.0, // Adjust the size as needed
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    CardItem currentItem = CardItems[currentIndex];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2.5),
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(currentItem.profileImageUrl),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              currentItem.username,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: currentItem.isFollowing
                  ? const Text(
                'Following',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              )
                  : const Text(
                'Follow',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 100,
          width: 400,
          child: GestureDetector(
            onTap: () {
              setState(() {
                showFullDescription = !showFullDescription;
              });
            },
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  showFullDescription
                      ? currentItem.description
                      : (currentItem.description.length > 100
                      ? '${currentItem.description.substring(0, 200)}...'
                      : currentItem.description),
                  style: const TextStyle(color: Colors.white),
                  maxLines: showFullDescription ? null : 6,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 40,
            ),
            IconButton(
              icon: Icon(
                  currentItem.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: currentItem.isLiked ? Colors.red : Colors.white,
                  size: 30),
              onPressed: isLikedButton,
            ),
            const SizedBox(
              width: 50,
            ),
            const Icon(Icons.how_to_vote, size: 30, color: Colors.white),
            const SizedBox(
              width: 50,
            ),
            const Icon(
              Icons.share,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(
              width: 50,
            ),
            IconButton(
              icon: const Icon(
                Icons.download,
                color: Colors.white,
              ),
              // onPressed: () => _downloadImage(currentItem),
              onPressed: () {},
            ),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
      ],
    );
  }
}