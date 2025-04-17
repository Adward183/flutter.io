import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 20, 243),
        title: Text('Screen 1'),
      ),
      backgroundColor: Color.fromARGB(255, 65, 13, 129),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
          child: Text('Go to screen 2'),
        ),
      ),
    );
  }
}
