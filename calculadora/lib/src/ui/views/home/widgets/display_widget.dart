import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final _controller = TextEditingController(text: "1234");

  Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
      controller: _controller,
      keyboardType: TextInputType.number,
      readOnly: true,
      decoration: InputDecoration(
        fillColor: Colors.green.shade100,
        filled: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      prefixIcon: Icon(Icons.calculate)
       ),
       textAlign: TextAlign.right,
      )
    );
  }
}
