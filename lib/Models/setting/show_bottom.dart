import 'package:flutter/material.dart';

class ShowBottom extends StatelessWidget {
  const ShowBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        selection('English',true),
        selection('Arabic',false),
      ],
    );
  }

  Widget selection(String text, bool selected) {
    if (selected) {
      return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(fontSize: 20, color: Colors.white,
              fontWeight: FontWeight.w400)),
          Icon(Icons.check, color: Colors.green, size: 40,)
        ],
      );
    }else{
      return   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(fontSize: 20, color: Colors.white,
              fontWeight: FontWeight.w400)),
          Icon(Icons.check,  size: 40,)
        ],
      );
    }
  }
}
