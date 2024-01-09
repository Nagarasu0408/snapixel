import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;

  // final void Function()? onTap;
  const CustomButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.lightBlue[700]),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
