import 'package:calculadora/src/ui/view_Models/home_view_model.dart';
import 'package:calculadora/src/ui/views/home/widgets/botao_widget.dart';
import 'package:calculadora/src/ui/views/home/widgets/display_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _viewModel = HomeViewModel();
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
          Display(controller: _viewModel.displayController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Botao(texto: "<",backgroundColor: Colors.grey, onPressed: (){},),
            Botao(texto: "C",backgroundColor: Colors.grey, onPressed: (){},),
            Botao(texto: "%",backgroundColor: Colors.grey, onPressed: (){},),
            Botao(texto: "/",backgroundColor: Colors.orange, onPressed:(){},),
           
          ],),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Botao(texto: "7", onPressed: (){},),
            Botao(texto: "8", onPressed: (){},),
            Botao(texto: "9", onPressed: (){},),
            Botao(texto: "x",backgroundColor: Colors.orange, onPressed:(){},),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Botao(texto: "4", onPressed: (){},),
            Botao(texto: "5", onPressed: (){},),
            Botao(texto: "6", onPressed: (){},),
            Botao(texto: "+",backgroundColor: Colors.orange, onPressed:(){},),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Botao(texto: "1", onPressed: (){},),
            Botao(texto: "2", onPressed: (){},),
            Botao(texto: "3", onPressed: (){},),
            Botao(texto: "-",backgroundColor: Colors.orange, onPressed:(){},),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Botao(texto: "0", onPressed: (){},),
            Botao(texto: ",", onPressed: (){},),
            Botao(texto: "=",backgroundColor: Colors.orange, onPressed:(){}, width: 215,),
          ],),
        ],
      ),
    );
  }
}
