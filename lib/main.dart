import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const PrincipalApp());
}

class PrincipalApp extends StatelessWidget {
  const PrincipalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrincipalExample(),
    );
  }
}

class PrincipalExample extends StatefulWidget {
  const PrincipalExample({super.key});

  @override
  State<PrincipalExample> createState() => _PrincipalExampleState();
}

class _PrincipalExampleState extends State<PrincipalExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('RPG'),
      ),
      body: Container(
        child: Visibility(
          visible: _selectedIndex == 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LeomirPage(),
                        ),
                      );
                    },
                    child: const Text('Leomir'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MasonPage(),
                        ),
                      );
                    },
                    child: const Text('Mason'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShadowPage(),
                        ),
                      );
                    },
                    child: const Text('Shadow'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      textStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShadowPage(),
                        ),
                      );
                    },
                    child: const Text('Shadow'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      textStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_sharp), label: 'Personagens'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined), label: 'Mapas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: 'Livros'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class LeomirPage extends StatelessWidget {
  const LeomirPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: const Text('Leomir'),
        ),
        body: Column(children: [Text('História do Leomir')]));
  }
}

class MasonPage extends StatelessWidget {
  const MasonPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Mason'),
        ),
        body: Column(children: [Text('História do Mason')]));
  }
}

class ShadowPage extends StatelessWidget {
  const ShadowPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey,
            title: const Text(
              'Shadow',
              style: TextStyle(color: Colors.black),
            )),
        body: Column(children: [Text('História do Shadow')]));
  }
}
