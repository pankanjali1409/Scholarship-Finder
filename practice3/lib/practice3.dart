import 'package:flutter/material.dart';

class Practice3 extends StatelessWidget {
  const Practice3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column & Row Colors"), backgroundColor: Colors.deepPurple),
      body: Container(
        color: Colors.orange[100],
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("This is COLUMN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            SizedBox(height: 20),


            Container(
              color: Colors.blue[100],
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  box(Colors.red),
                  box(Colors.green),
                  box(Colors.blue),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              color: Colors.purple[100], // 🟪 Row 2 background
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  box(Colors.purple),
                  box(Colors.yellow),
                  box(Colors.teal),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget box(Color color) {
    return Container(
      height: 60,
      width: 60,
      color: color,
    );
  }
}