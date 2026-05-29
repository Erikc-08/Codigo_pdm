import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final void Function()? onPressed;
  final Color? backgroundColor;
  const Botao({super.key, required this.texto, this.onPressed, this.backgroundColor});

@override
Widget build(BuildContext context) {
  return FilledButton(
    onPressed: onPressed,
    style: FilledButton.styleFrom(
      backgroundColor: backgroundColor ?? const Color.fromARGB(255, 54, 54, 54),
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
