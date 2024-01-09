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
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color:Colors.black)),
        child: Text(buttonName,style:TextStyle(fontSize: 20) ,),
      ),
    );
  }
}
