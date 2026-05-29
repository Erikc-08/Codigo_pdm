import 'package:calculadora/src/ui/views/home/widgets/botao_widget.dart';
import 'package:calculadora/src/ui/views/home/widgets/display_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Calculadora 2k26',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        )),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Display(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Botao(texto: "9",onPressed: (){},),
            TextButton(onPressed: (){}, child: Text('9')),
            TextButton(onPressed: (){}, child: Text('9')),
            TextButton(onPressed: (){}, child: Text('9'))
          ],),
          TextButton(onPressed: (){}, child: Text('9'))
        ],
      ),
    );
  }
}
