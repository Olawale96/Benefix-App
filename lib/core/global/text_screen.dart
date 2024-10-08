import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  final String title;
  final String desc;
  const TextScreen({super.key, required this.title, required this.desc});

  @override
  State<TextScreen> createState() => _TextPageState();
}

class _TextPageState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
