import 'package:alemeno_adarsh/components/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  void Function() press;
  final Color color, textColor;
  RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kMainColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 175,
      height: 42,
      decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(30), 
          boxShadow: const [
        BoxShadow(
          color: Colors.black87,
          blurRadius: 5,
          spreadRadius: 1,
          offset: Offset(1, 1),
        ),
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), 
        child: newElevatedButton()),
    );
  }
  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.w500, fontSize: 19,),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          textStyle: TextStyle(
              color: textColor, fontSize: 17, fontWeight: FontWeight.w400)),
    );
  }
}
