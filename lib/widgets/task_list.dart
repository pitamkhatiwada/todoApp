import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class TaskList extends StatelessWidget {

  @override
Widget build(BuildContext context) {
  return Consumer<TaskData>(
    builder: (context, taskData , child) {
      return ListView.builder(itemBuilder: (context, index){
        final task = taskData.tasks[index];
        return Tasktile(isChecked: task.isDone,
            taskTitle: task.name,
            checkboxcallback :( checkBoxSate){
                taskData.upDateTask(task);
            },
            longPressCallBack: (){
              taskData.delateTask(task);
        },
        );
      },
        itemCount: taskData.taskCount,
      );
    },
  );
}
}