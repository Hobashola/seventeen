import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ass seventeen',
      home: Scaffold(
        body: const [
          Center(
            child: Text(
                'Home',
            ),
          ),
          Center(
            child: Text(
                'Profile',
            ),
          ),
          Center(
            child: Text(
                'Settings',
            ),
          ),
        ] [selectedPageIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedPageIndex,
            onDestinationSelected: (int index) {
            setState(() {
              selectedPageIndex = index;
            });
            },

          destinations: const <NavigationDestination>[
            NavigationDestination(
                selectedIcon: Icon(Icons.cabin),
              icon: Icon(Icons.cabin_outlined),
              label: 'Home',
            ),
            NavigationDestination(
                selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
            NavigationDestination(
                selectedIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),

          ]
        ),
      )
    );
  }
}

