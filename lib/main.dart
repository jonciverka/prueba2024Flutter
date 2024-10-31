import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba2024/Rutas/get_rutas.dart';
import 'package:prueba2024/bloc/noticias/noticias_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NoticiasBloc()),
      ],
      child: MaterialApp(
        title: 'B2B Indirector',
        initialRoute: '/',
        routes: getRutas(),
      ),
    );
  }
}
