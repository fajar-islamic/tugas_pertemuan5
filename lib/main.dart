import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LayoutRulesExample(),
  ));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiga Aturan Layout Flutter'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: const MyPages2(),
    );
  }
}

class MyPages2 extends StatelessWidget {
  const MyPages2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '3. Aturan Posisi (dengan Center)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              height: 200,
              color: Colors.grey[300],
              child: Center(
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                  child: const Text('Center', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            const Divider(height: 40, thickness: 2),
            const Text(
              '3. Aturan Posisi (dengan Align)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              height: 200,
              color: Colors.grey[300],
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                  child: const Text('Align', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}