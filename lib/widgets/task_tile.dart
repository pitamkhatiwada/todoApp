// import 'package:flutter/material.dart';
//
// class Tasktile extends StatelessWidget {
//
//  final bool isChecked;
//  final String taskTitle;
//  final Function(bool?)? checkboxcallback;
//  Tasktile({this.isChecked = false, required this.taskTitle, required this.checkboxcallback});

 // @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(taskTitle,
//         style: TextStyle(
//           decoration: isChecked == true ? TextDecoration.lineThrough : null
//         ),
//       ),
//       trailing:Checkbox(
//         checkColor: Colors.lightBlueAccent,
//         value: isChecked,
//
//         onChanged: checkboxcallback,
//       ),
//
//     );
//   }
// }


import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxcallback;
  final Function()? longPressCallBack;
  Tasktile({required this.isChecked, required this.taskTitle, required this.checkboxcallback, required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskTitle,
        style: TextStyle(
            decoration: isChecked == true ? TextDecoration.lineThrough : null
        ),
      ),
      trailing:Checkbox(
        checkColor: Colors.lightBlueAccent,
        value: isChecked,

        onChanged:checkboxcallback
      ),

    );
  }
}