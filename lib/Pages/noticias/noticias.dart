import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:prueba2024/Modelos/noticia.dart';
import 'package:prueba2024/Pages/noticias/widgets/error.dart';
import 'package:prueba2024/Widgets/carta_noticia.dart';
import 'package:prueba2024/bloc/noticias/noticias_bloc.dart';
import 'package:prueba2024/bloc/noticias/noticias_event.dart';
import 'package:prueba2024/bloc/noticias/noticias_state.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({super.key});

  @override
  State<NoticiasPage> createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  List<Noticia>? res;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NoticiasBloc>(context)
        .add(NoticiasGetList(context: context));
    return Scaffold(
      body: SafeArea(child: BlocBuilder<NoticiasBloc, NoticiasState>(
        builder: (context, state) {
          if (state is NoticiasGetListSuccess) {
            return LiquidPullToRefresh(
              backgroundColor: Colors.black,
              color: Colors.white,
              showChildOpacityTransition: false,
              onRefresh: () async {
                BlocProvider.of<NoticiasBloc>(context)
                    .add(NoticiasGetList(context: context));
              }, // refresh callback
              child: ListView(
                children: context.read<NoticiasBloc>().state.noticias?.map(
                      (noticia) {
                        return CartaNoticia(noticia: noticia);
                      },
                    ).toList() ??
                    [],
              ), // scroll view
            );
          } else if (state is NoticiasGetListError) {
            return const ErrorWgt();
          } else {
            return Skeletonizer(
              child: ListView(
                children: List.generate(
                        10,
                        (index) => Noticia(
                            author: "autor",
                            content: "content",
                            title: "title",
                            description: "description")).map(
                      (noticia) {
                        return CartaNoticia(noticia: noticia);
                      },
                    ).toList() ??
                    [],
              ),
            );
          }
        },
      )), // scroll view
    );
  }
}
