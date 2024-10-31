import 'package:flutter/material.dart';
import 'package:prueba2024/Modelos/noticia.dart';
import 'package:prueba2024/Pages/noticias/widgets/cabecera.dart';
import 'package:prueba2024/Pages/noticias/widgets/descripcion.dart';
import 'package:prueba2024/Pages/noticias/widgets/noticia.dart';
import 'package:prueba2024/Pages/noticias/widgets/titulo.dart';
import 'package:prueba2024/Pages/noticias/widgets/url.dart';
import 'package:prueba2024/assets/asset.dart';

class NoticiaPage extends StatefulWidget {
  final Noticia noticia;
  const NoticiaPage({super.key, required this.noticia});

  @override
  State<NoticiaPage> createState() => _NoticiaPageState();
}

class _NoticiaPageState extends State<NoticiaPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => asyncInitState());
  }

  void asyncInitState() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    height: 15,
                  ),
                  TituloNoticia(
                    titulo: widget.noticia.title ?? "NA",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CabeceraAutor(
                    autor: widget.noticia.author!,
                    fecha: widget.noticia.publishedAt!,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.network(
                    widget.noticia.urlToImage ?? "",
                    fit: BoxFit.cover,
                    height: MediaQuery.sizeOf(context).width,
                    width: MediaQuery.sizeOf(context).width,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(Assets.noImage);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Descripcion(
                      description:
                          widget.noticia.description ?? "No hay descripción"),
                  const SizedBox(
                    height: 10,
                  ),
                  CuerpoNoticia(
                    content: widget.noticia.content ?? "NA",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (widget.noticia.tieneUrl()) Url(url: widget.noticia.url!)
                ],
              ),
            ),
          ),
        ));
  }
}
