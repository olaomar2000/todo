import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/todoprovider.dart';
import 'package:todo/ui/widgets/task_widget.dart';

class CompleteTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context).completeTasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(
            Provider.of<TodoProvider>(context).completeTasks[index],
          );
        });
  }
}
