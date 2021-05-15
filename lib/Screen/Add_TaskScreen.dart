import 'package:flutter/material.dart';

class Add_TaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  const Add_TaskScreen( this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  autofocus: true,
                  onChanged: (newText){
                    newTaskTitle=newText;
                  },

                ),
              ),
              ElevatedButton(
                child: Text('Commit'),
                onPressed: () {

                  addTaskCallback(newTaskTitle);

                },
                style:
                ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
              )
            ],
          ),
        ),
      ),
    );
  }
}
