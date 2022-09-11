import 'package:flutter/material.dart';
import 'package:todo/Models/setting/show_bottom.dart';
import 'package:todo/Models/setting/show_bottom_theme.dart';
import 'package:todo/shard/styles/clors.dart';
class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/paris.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      Padding(
          padding: const EdgeInsets.all(2),
          child:
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Center(
                  child: Text('language', style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25)

                      )),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color:Colors.green[200], borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  onTap: () {
                    showButtonDetails();
                  },
                  child: Text('English',style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),

                      )),
                ),
              SizedBox(height: 20),
              Center(
                  child: Text('Theme',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ))),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.green[200], borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  onTap: () {
                    showthemeButtonDetails();
                  },
                  child: Text('Dark',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      )),
                ),
         ), ]),
          )),
    ]);

  }

  void showButtonDetails() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowBottom();
        });
  }
  void showthemeButtonDetails() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowBottomm();
        });
  }
}
