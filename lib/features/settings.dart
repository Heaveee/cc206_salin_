import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SettingsContent(),
    );
  }
}

class SettingsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Image.asset(
                "assets/salin_logo.png",
                width: 94,
                height: 96,
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 16.0),
          ListTile(
            title: Text(
              "Account",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              "Privacy, security, change email or number",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            leading: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text(
              "Notifications",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              "Sounds, Mute, Alarm Type",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            leading: Icon(Icons.notifications),
          ),
          ListTile(
            title: Text(
              "Help",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            // You can add more content for the "Help" section if needed
            leading: Icon(Icons.help),
          ),
          SizedBox(height: 16.0),
          Container(
            width: 246,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffffaa28),
            ),
            child: Center(
              child: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
