import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future main() async {
  await Supabase.initialize(
    url: 'https://ctoyoovkqoawoeszdjqk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN0b3lvb3ZrcW9hd29lc3pkanFrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDU4NDAzMDgsImV4cCI6MjA2MTQxNjMwOH0.uLWsqaO-YNi042QGNrqRCYj-KQSEWcuucHHyHGDYIa4',
  );
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _admin = SupabaseClient(
      'https://ctoyoovkqoawoeszdjqk.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN0b3lvb3ZrcW9hd29lc3pkanFrIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NTg0MDMwOCwiZXhwIjoyMDYxNDE2MzA4fQ.DaW5JVWmKv-ijFPTC_8RmAaIHbytxbvPe7A01MWum48',
    );
    final _client = Supabase.instance.client;
    late dynamic users;
    _admin.auth.admin.listUsers().then((users) {
      //print(value);
      print("<<<");
      users.forEach((user) {
        print("role:");
        print(user.userMetadata?['role']);
      });
    });
    print("before duration");
    Future.delayed(Duration(seconds: 10), () {
      //print(users);
    });

    /*_client.auth.signUp(
      email: 'example05mayNew@email.com',
      password: 'example-password',
      data: {"age": 20, "role": "student", "vip": false},
    );*/
    /*
    _client.auth.signInWithPassword(
      email: "example05may@email.com",
      password: 'example-password',
    );*/
    //final users = _admin.auth.admin.listUsers();
    //  print(users);
    return MaterialApp(
      home: Center(
        child: ElevatedButton(
          child: Text('a'.toString()),
          onPressed: () async {},
        ),
      ),
    );
  }
}
