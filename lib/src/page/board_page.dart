import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key});

  static const String routeName = "/board";

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Stockfish example app'),
      ),
      body: const Center(child: Text("Board Screen")),
    );
  }
}