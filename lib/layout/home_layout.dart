import 'package:flutter/material.dart';

import '../Models/floating_action/floating_task.dart';
import '../Models/list/list_task.dart';
import '../Models/setting/setting_Task.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'ToDo';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  var currentIndex = 0;

  List<Widget> taps = [ListTask(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          showModalBottomSheet(
              context: context, builder: (context) => FloatingTask());
        },
        child: Icon(Icons.add),

      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        centerTitle: true,
        title: Text('To Do List'),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        shape: CircularNotchedRectangle(),
        notchMargin: 14,
        color: Colors.transparent,
        child: BottomNavigationBar(
          onTap: (index) {
            currentIndex = index;
            setState(() => null);
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting'),
          ],
        ),
      ),
      body: taps[currentIndex],
    );
  }
}
