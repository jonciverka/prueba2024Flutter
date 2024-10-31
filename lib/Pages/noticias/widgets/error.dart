import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba2024/bloc/noticias/noticias_bloc.dart';
import 'package:prueba2024/bloc/noticias/noticias_event.dart';

class ErrorWgt extends StatelessWidget {
  const ErrorWgt({super.key});
  final TextStyle _style = const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontFamily: "cheltenham");
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => BlocProvider.of<NoticiasBloc>(context)
            .add(NoticiasGetList(context: context)),
        child: Center(
            child: Text(
          "Error al cargar, voler a intentarlo",
          style: _style,
        )));
  }
}
