import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  const Botao({super.key, required this.texto});

@override
Widget build(BuildContext context) {
  return FilledButton(
    onPressed: (){},
    style: FilledButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 54, 54, 54),
      fixedSize: Size(60, 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      )
    ),
     child: Text(texto,
     style: TextStyle(
     fontSize: 20,
     fontWeight:  FontWeight.bold,
     color: Colors.white
     )),
    );
  }
}
