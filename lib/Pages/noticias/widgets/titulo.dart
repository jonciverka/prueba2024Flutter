import 'package:flutter/material.dart';

class TituloNoticia extends StatelessWidget {
  final String titulo;
  const TituloNoticia({super.key, required this.titulo});
  final TextStyle _style = const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontFamily: "cheltenham");
  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: _style.copyWith(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
