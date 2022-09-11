import 'package:flutter/material.dart';

class FloatingTask extends StatefulWidget {
  @override
  State<FloatingTask> createState() => _FloatingTaskState();
}

class _FloatingTaskState extends State<FloatingTask> {
  var formKey = GlobalKey<FormState>();

  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add New Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Enter Your Task Title'),
                      maxLines: 4,
                      validator: (text) {
                        if (text == null || text.isEmpty)
                          return ('Please Entre your Title');
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Enter Your Task Details'),
                      maxLines: 4,
                      validator: (text) {
                        if (text == null || text.isEmpty)
                          return ('please Entre Your Descreption');
                      },
                    ),
                  ],
                )),
            Text('Select Date',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(height: 12),
            Center(
              child: InkWell(
                onTap: () {
                  showdateselected();
                  setState(() {});
                },
                child: Text(
                    '${selectedDate.year}/${selectedDate.month}/${selectedDate.day}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) ;
                },
                child: Text('Add'))
          ],
        ));
  }

  showdateselected() async {
    var choosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (choosenDate != null) selectedDate = choosenDate;
  }
}
