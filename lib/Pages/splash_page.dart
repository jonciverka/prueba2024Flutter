import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:prueba2024/Pages/noticias/noticias.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => asyncInitState());
  }

  void asyncInitState() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.of(context).push(PageAnimationTransition(
        page: const NoticiasPage(),
        pageAnimationType: BottomToTopTransition()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Center(
            child: Text(
          "Cargando prueba Jonathan Aviles...",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
      ),
    );
  }
}
