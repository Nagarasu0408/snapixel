import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';



class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String imageUrl = "https://images.hdqwalls.com/wallpapers/bthumb/batman-in-the-heat-of-action-vc.jpg"; // Replace with your image URL

  void _launchWhatsApp() async {
    String url = "whatsapp://send?text=Check%20out%20this%20image&phone=whatsAppNumber";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp Image Share"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _launchWhatsApp,
              child: Text("Share via WhatsApp"),
            ),
          ],
        ),
      ),
    );
  }
}
