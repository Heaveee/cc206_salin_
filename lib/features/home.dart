import 'package:flutter/material.dart';
import 'package:cc206_salin_/features/settings.dart';
import 'package:cc206_salin_/features/profile.dart';
import 'package:cc206_salin_/features/notification.dart';
import 'package:cc206_salin_/features/dictionary.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeContent(),
    DictionaryScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_currentIndex],
          Positioned(
            top: 16.0,
            left: 16.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/salin_logo.png'),
              ),
            ),
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
              child: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Dictionary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  TextEditingController _textEditingController = TextEditingController();
  String _translatedText = '';
  String _selectedLanguage = 'English'; // Default language

  List<String> _languages = [
    'English',
    'Tagalog',
    'Kapampangan',
    'Chavacano',
    'Cebuano',
    'Ilocano',
    'Waray',
    'Bikolano',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          16.0, 150.0, 16.0, 16.0), // Adjusted top padding
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Adjusted to start from the top
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              hintText: 'Enter text to translate',
            ),
          ),
          SizedBox(height: 16.0), // Adjusted spacing
          Center(
            child: DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value!;
                });
              },
              items: _languages.map((language) {
                return DropdownMenuItem(
                  value: language,
                  child: Text(language),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 16.0), // Adjusted spacing
          ElevatedButton(
            onPressed: () {
              // Here you would call a translation API
              // For example purposes, we'll use a simple hardcoded translation
              setState(() {
                _translatedText =
                    'Translated to $_selectedLanguage: ${_textEditingController.text}';
              });
            },
            child: Text("Translate"),
          ),
          SizedBox(height: 32.0), // Adjusted spacing
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Translation:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  _translatedText,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
