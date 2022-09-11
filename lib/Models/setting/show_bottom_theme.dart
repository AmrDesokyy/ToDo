import 'package:flutter/material.dart';

class ShowBottomm extends StatelessWidget {
  const ShowBottomm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        selection('Light',true),
        selection('Dark',false),
      ],
    );
  }

  Widget selection(String text, bool selected) {
    if (selected) {
      return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(fontSize: 25, color: Colors.white,
              fontWeight: FontWeight.w400)),
          Icon(Icons.check, color: Colors.green, size: 40,)
        ],
      );
    }else{
      return   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(fontSize: 25, color: Colors.white,
              fontWeight: FontWeight.w400)),
          Icon(Icons.check,  size: 40,)
        ],
      );
    }
  }
}
