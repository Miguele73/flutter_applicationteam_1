import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: JueStEdMi()));
  }
}

class JueStEdMi extends StatefulWidget {
  const JueStEdMi({super.key});

  @override
  State<JueStEdMi> createState() => _JueStEdMiState();
}

class _JueStEdMiState extends State<JueStEdMi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(list[index]));
          },
        ),
        ElevatedButton(
          onPressed: iDeleteTheLastPosition,
          child: const Text('Delete Last Position'),
        ),
      ],
    );
  }

  void iDeleteTheLastPosition() {
    setState(() {
      list.removeLast();
    });
  }
}

List<String> list = ['Wir', 'wünschen', 'Euch', 'einen', 'schönen', 'Mittwoch'];
