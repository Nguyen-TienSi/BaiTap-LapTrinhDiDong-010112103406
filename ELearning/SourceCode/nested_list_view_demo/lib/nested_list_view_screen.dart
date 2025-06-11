import 'package:flutter/material.dart';

class NestedListViewScreen extends StatelessWidget {
  const NestedListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.9;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested ListView Example'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: height,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, outerIndex) {
            return Container(
              width: 200,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: [
                  Colors.blue,
                  Colors.red,
                  Colors.green,
                  Colors.orange,
                  Colors.purple,
                  Colors.teal,
                  Colors.amber,
                  Colors.pink,
                  Colors.cyan,
                ][outerIndex % 9][100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Vertical List ${outerIndex + 1}',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, innerIndex) {
                        return ListTile(
                          title: Center(
                            child: Text(
                              'Item ${innerIndex + 1}',
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          dense: true,
                          visualDensity: VisualDensity.compact,
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
