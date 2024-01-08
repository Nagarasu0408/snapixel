import 'package:flutter/material.dart';

void main(){
  runApp(( const MaterialApp(home:Qpixel(),debugShowCheckedModeBanner: false,)));
}

class Qpixel extends StatefulWidget {
  const Qpixel({super.key});

  @override
  State<Qpixel> createState() => _QpixelState();
}

class _QpixelState extends State<Qpixel> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Hello Mr"),),
    );
  }
}

