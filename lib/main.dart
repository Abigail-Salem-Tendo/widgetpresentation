import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const OrderScreen(),
    );
  }
}

// the same food order card, without and with Padding
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
            Text('Without Padding',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            OrderCardWithoutPadding(),
            SizedBox(height: 32),
            Text('With Padding',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            OrderCardWithPadding(),
          ],
        ),
      ),
    );
  }
}

// no spacing, everything touches
class OrderCardWithoutPadding extends StatelessWidget {
  const OrderCardWithoutPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.orange,
            child: const Icon(Icons.restaurant, color: Colors.white, size: 40),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Chicken Pilau',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Text("Mama's Kitchen",
                    style: TextStyle(color: Colors.grey)),
                const Text('\$8.50',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Order now')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// The Padding widget's key property is 'padding'.
class OrderCardWithPadding extends StatelessWidget {
  const OrderCardWithPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        // EdgeInsets.all same space on all 4 sides
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.orange,
              child: const Icon(Icons.restaurant, color: Colors.white, size: 40),
            ),
            Expanded(
              child: Padding(
                // EdgeInsets.only space on chosen sides only
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Chicken Pilau',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const Text("Mama's Kitchen",
                        style: TextStyle(color: Colors.grey)),
                    const Padding(
                      //EdgeInsets.symmetric top+bottom (or left+right) pairs in one line
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('\$8.50',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Order now')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}