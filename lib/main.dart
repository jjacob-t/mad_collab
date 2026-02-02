// main.dart
import 'package:flutter/material.dart';

// The main entry point of the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TASK 1: Change the title of the app
      title: 'My First Flutter App',
      theme: ThemeData(
        // TASK 2: Change the primary swatch color (try Colors.red, Colors.green)
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TASK 3: Change the text in the top bar
        title: Text('Welcome to Class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 4,
              margin: EdgeInsets.all(16),
              child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
              children: [Icon(Icons.person, size: 50, color: Colors.blue), SizedBox(width: 16), Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Student Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Major: Computer Science', 
              style: TextStyle(color: Colors.grey)),
              ],
          ),
      ],
    ),
  ),
),
ListView.builder(
  shrinkWrap: true,
  itemCount: 7,
  itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.star, color: Colors.amber),
      title: Text('Item ${index + 1}'),
      subtitle: Text('Description for item ${index + 1}'),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  },
),
            // TASK 4: Change the main text below
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Adds space between widgets
            // TASK 5: Change the subtitle text
            Text(
              'This is my first modification.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Button Clicked!');
              },
              // TASK 6: Change the text on the button
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

