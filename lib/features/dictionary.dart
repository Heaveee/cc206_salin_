import 'package:flutter/material.dart';

class DictionaryScreen extends StatefulWidget {
  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  TextEditingController _searchController = TextEditingController();
  List<DictionaryEntry> _allEntries = [
    DictionaryEntry("Flutter",
        "A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase."),
    DictionaryEntry("Dart",
        "A programming language optimized for building mobile, desktop, server, and web applications."),
    DictionaryEntry(
        "Widget", "The basic building block of the user interface in Flutter."),
    // Add more dictionary entries as needed
  ];

  List<DictionaryEntry> _filteredEntries = [];

  @override
  void initState() {
    super.initState();
    _filteredEntries.addAll(_allEntries);
  }

  void _filterEntries(String query) {
    setState(() {
      _filteredEntries = _allEntries
          .where(
              (entry) => entry.word.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dictionary"),
        centerTitle: true, // Set this to true to center the title
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterEntries,
              decoration: InputDecoration(
                hintText: "Search for a word...",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredEntries.length,
              itemBuilder: (context, index) {
                return _filteredEntries[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DictionaryEntry extends StatelessWidget {
  final String word;
  final String definition;

  DictionaryEntry(this.word, this.definition);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              word,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              definition,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
