import 'package:flutter/material.dart';

class spoty extends StatefulWidget {
  const spoty({super.key});

  @override
  State<spoty> createState() => _spotyState();
}

class _spotyState extends State<spoty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium_outlined),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),

    );
  }
}
