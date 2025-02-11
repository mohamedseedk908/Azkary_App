import 'package:flutter/material.dart';

class AzkarDetailsScreen extends StatefulWidget {
  final String azkarTitle;

  AzkarDetailsScreen(this.azkarTitle);

  @override
  _AzkarDetailsScreenState createState() => _AzkarDetailsScreenState();
}

class _AzkarDetailsScreenState extends State<AzkarDetailsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.azkarTitle)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "📖 سبحان الله وبحمده، سبحان الله العظيم",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "عدد التكرار: $counter",
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Text("🔄 اضغط للتكرار"),
            ),
          ],
        ),
      ),
    );
  }
}
