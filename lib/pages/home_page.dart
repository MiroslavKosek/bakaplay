import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            height: 1,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(height: 5),
          const Center(
            child: Text(
              "Home Page",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}