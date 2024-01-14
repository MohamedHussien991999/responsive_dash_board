import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBoardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DashBoardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}