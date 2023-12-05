import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true, // Set this to true to center the title
      ),
      body: NotificationList(),
    );
  }
}

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with the actual number of notifications
      itemBuilder: (context, index) {
        return NotificationItem(
          title: "Notification ${index + 1}",
          time: "12:34 PM", // Replace with the actual time
        );
      },
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String time;

  NotificationItem({required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(time),
      onTap: () {
        // Handle the tap on the notification item if needed
      },
    );
  }
}
