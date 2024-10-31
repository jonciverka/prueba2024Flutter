import 'package:flutter/material.dart';

class CuerpoNoticia extends StatelessWidget {
  final String content;
  const CuerpoNoticia({super.key, required this.content});
  final TextStyle _style = const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontFamily: "cheltenham");
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: _style,
    );
  }
}
