import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final _controller = TextEditingController(text: "1234");

  Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Define espaçamento interno
      padding: const EdgeInsets.all(18.0),
      child: TextField(
      controller: _controller,
      //Define tamanho e cor do texto/numero
      style: TextStyle(fontSize: 60, color: Colors.white),
      //Define o Max e Min de linhas 
      maxLines: 3,
      minLines: 3,
      //Define alinhamento do texto
      textAlign: TextAlign.end,

      keyboardType: TextInputType.number,
      //Define alinhamento vertical
      textAlignVertical: TextAlignVertical.bottom,

      readOnly: true,
      //Define aparencia
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 54, 54, 54),
        filled: true,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 54, 54, 54),
            width: 3
          ),

        ),
        focusedBorder:  OutlineInputBorder( 
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.yellow,
            width: 3
          ),

        ),


       ),
      )
    );
  }
}
