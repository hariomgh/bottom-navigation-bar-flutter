import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    MyCourseScreen(),
    AskRaywingsScreen(),
    LearningAnalysisScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book,
              color: Color(0xff800000),
            ),
            label: 'MyCourse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer,
              color: Color(0xff800000),
            ),
            label: 'Ask Raywings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics,
              color: Color(0xff800000),
            ),
            label: 'Learning Analysis',
          ),
        ],
      ),
    );
  }
}

class MyCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'MyCourse Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class AskRaywingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Ask Raywings Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class LearningAnalysisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Learning Analysis Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
