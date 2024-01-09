import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onTap;
  const CustomButton({super.key, required this.buttonName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: Colors.transparent),
            color: Colors.lightBlue[700]),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white),
        ),
      ),
    );
  }
}
