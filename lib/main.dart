
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: Something(), backgroundColor: Colors.blueGrey),
    ),
  );
}

class Something extends StatelessWidget {
  const Something({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
