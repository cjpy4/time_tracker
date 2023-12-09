import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Time Tracker'),
          actions: [
            DropdownButton<String>(
              value: 'Project 1',
              items: [
                DropdownMenuItem(value: 'Project 1', child: Text('Project 1')),
                DropdownMenuItem(value: 'Project 2', child: Text('Project 2')),
              ],
              onChanged: (value) {},
            ),
            DropdownButton<String>(
              value: 'Area 1',
              items: [
                DropdownMenuItem(value: 'Area 1', child: Text('Area 1')),
                DropdownMenuItem(value: 'Area 2', child: Text('Area 2')),
              ],
              onChanged: (value) {},
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Start/Stop Timer'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Reset Timer'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Add Task'),
            ),
          ],
        ),
        body: Row(
          children: [
            Flexible(child: _buildTaskList()),
            Divider(),
            _buildTaskDetailsPanel(),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Task $index'),
          subtitle: Text('1 hour 23 minutes'),
        );
      },
    );
  }

  Widget _buildTaskDetailsPanel() {
    return Card(
      child: Column(
        children: [
          Text('Task Details'),
          Divider(),
          ListTile(
            title: Text('Name'),
            subtitle: Text('Task 1'),
          ),
          ListTile(
            title: Text('Description'),
            subtitle: Text('This is a sample task.'),
          ),
          ListTile(
            title: Text('Project'),
            subtitle: Text('Project 1'),
          ),
          ListTile(
            title: Text('Area'),
            subtitle: Text('Area 1'),
          ),
          ListTile(
            title: Text('Start Time'),
            subtitle: Text('2023-12-08 10:00 AM'),
          ),
          ListTile(
            title: Text('Total Time Elapsed'),
            subtitle: Text('1 hour 23 minutes'),
          ),
        ],
      ),
    );
  }
}
