import 'package:flutter/material.dart';
import 'package:prueba2024/Helpers/utilities.dart';

class CabeceraAutor extends StatelessWidget {
  final String autor;
  final DateTime fecha;
  const CabeceraAutor({super.key, required this.autor, required this.fecha});
  final TextStyle _style = const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontFamily: "cheltenham");
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          autor,
          style: _style.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          "${Utilities().dateTimeToStringDiferencia(fecha)}",
          style: _style.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
