import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
    color: Colors.grey,
    margin: EdgeInsets.all(12),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(16),
    height: 50,
    width: 6,
    color: Colors.white,
    ),

    Column(
    children: [
    Text('Add Task',style: Theme.of(context).textTheme.headline1,),
    Text('Add Task',style: Theme.of(context).textTheme.headline1,),
  ],
  ),

  Container(
  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  color: Colors.blueGrey[400]

  ),
  child: Icon(Icons.check ,color: Colors.redAccent,size: 30,))
  ],
  ),
  );
  }
}
