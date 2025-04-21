import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  String _savedText = '';

  @override
  void initState() {
    super.initState();
    _loadSavedText();
  }

  Future<void> _loadSavedText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedText = prefs.getString('saved_text') ?? '';
      _controller.text = _savedText; // Устанавливаем текст в TextField
    });
  }

  Future<void> _saveText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_text', _controller.text);
    setState(() {
      _savedText = _controller.text; // Обновляем сохраненный текст
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Preferences Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Введите текст'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveText,
              child: Text('Сохранить текст'),
            ),
            SizedBox(height: 20),
            Text('Сохраненное значение: $_savedText'),
          ],
        ),
      ),
    );
  }
}
