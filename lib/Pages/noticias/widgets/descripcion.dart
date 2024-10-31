import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget {
  final String description;
  const Descripcion({super.key, required this.description});
  final TextStyle _style = const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontFamily: "cheltenham");
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: _style.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
