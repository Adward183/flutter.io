import 'package:flutter/material.dart';
import 'screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 20, 107),
        title: Text('Screen 2'),
      ),
      backgroundColor: const Color.fromARGB(255, 113, 14, 73),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen3()),
            );
          },
          child: Text('Go to screen 3'),
        ),
      ),
    );
  }
}
