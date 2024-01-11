import 'package:flutter/material.dart';

class Custom_SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChanged;
  const Custom_SearchBar({super.key, required this.controller, required this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      margin:const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blueGrey.shade100)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: controller,
          style:const TextStyle(fontFamily: 'Classic',fontSize: 20),
          textAlign: TextAlign.start,
          cursorColor: Colors.blue.shade300,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              enabled: true,
              disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              hintText: hintText,
              hintStyle:const TextStyle(fontSize: 15,color: Colors.black26,fontFamily: 'Classic'),
              suffixIcon:const Icon(Icons.search,size: 25)
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
