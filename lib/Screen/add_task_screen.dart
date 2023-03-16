import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   late String newTextTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w600,
              ),

            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTextTitle = newText;
              },
            ),
            SizedBox(height: 50,),
            TextButton(
              onPressed:
                (){
               Provider.of<TaskData>(context , listen: false).addTask(newTextTitle);
               Navigator.pop(context);
            },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
              child: Text('ADD',
                style: TextStyle(color: Colors.white),
              ),),
          ],
        ),
      ),
    );
  }
}
