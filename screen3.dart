import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 207, 213),
        title: Text('Screen 3'),
      ),
      backgroundColor: const Color.fromARGB(255, 19, 113, 113),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: Text('Return to screen 1'),
        ),
      ),
    );
  }
}
