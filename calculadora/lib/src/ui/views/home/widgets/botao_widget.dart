import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final double width;
  const Botao({super.key, required this.texto, this.onPressed, 
  this.backgroundColor, this.width = 60});

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 18.0),
    child: FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor ?? const Color.fromARGB(255, 54, 54, 54),
        fixedSize: Size(width, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60)
        )
      ),
       child: Text(texto,
       style: TextStyle(
       fontSize: 20,
       fontWeight:  FontWeight.bold,
       color: Colors.white
       )),
      ),
  );
  }
}
