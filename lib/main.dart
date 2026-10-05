import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const PaddingDemo(),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Padding Widget Demo'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Blue = space added by Padding  |  White = the child',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            PaddingExample(
              label: 'No padding',
              code: 'EdgeInsets.zero',
              padding: EdgeInsets.zero,
            ),
            PaddingExample(
              label: 'Same space on all 4 sides',
              code: 'EdgeInsets.all(16)',
              padding: EdgeInsets.all(16),
            ),
            PaddingExample(
              label: 'Paired sides (left/right, top/bottom)',
              code: 'EdgeInsets.symmetric(horizontal: 32, vertical: 8)',
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            ),
            PaddingExample(
              label: 'Only the sides you name',
              code: 'EdgeInsets.only(left: 40, bottom: 12)',
              padding: EdgeInsets.only(left: 40, bottom: 12),
            ),
            PaddingExample(
              label: 'Each side set individually',
              code: 'EdgeInsets.fromLTRB(40, 8, 8, 24)',
              padding: EdgeInsets.fromLTRB(40, 8, 8, 24),
            ),
          ],
        ),
      ),
    );
  }
}

class PaddingExample extends StatelessWidget {
  final String label;
  final String code;
  final EdgeInsets padding;

  const PaddingExample({
    super.key,
    required this.label,
    required this.code,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                code,
                style: const TextStyle(fontSize: 13, fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 12),
            // The demo box: blue background shows the padding space
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: padding, // attribute 1: padding
                child: Container(  // attribute 2: child (white = the child)
                  color: Colors.white,
                  child: const Text(
                    'Hello, Padding!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}