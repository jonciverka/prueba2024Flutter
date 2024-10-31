import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:prueba2024/Modelos/noticia.dart';
import 'package:prueba2024/Pages/noticias/noticia.dart';
import 'package:prueba2024/assets/asset.dart';

class CartaNoticia extends StatelessWidget {
  final Noticia noticia;
  const CartaNoticia({super.key, required this.noticia});
  final TextStyle _style = const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontFamily: "cheltenham");
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          Navigator.of(context).push(PageAnimationTransition(
              page: NoticiaPage(
                noticia: noticia,
              ),
              pageAnimationType: BottomToTopTransition()));
        },
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.network(
                  noticia.urlToImage ?? "",
                  fit: BoxFit.cover,
                  height: 100,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(Assets.noImage);
                  },
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        noticia.title!,
                        style: _style.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        noticia.description!,
                        style: _style.copyWith(
                            fontWeight: FontWeight.normal, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
