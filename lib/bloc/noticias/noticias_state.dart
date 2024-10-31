import 'package:prueba2024/Modelos/noticia.dart';

abstract class NoticiasState {
  List<Noticia>? noticias;

  NoticiasState({this.noticias});
}

final class NoticiasInitial extends NoticiasState {}

class NoticiasGetListLoading extends NoticiasState {}

class NoticiasGetListSuccess extends NoticiasState {
  final List<Noticia> noticia;
  NoticiasGetListSuccess({required this.noticia});
}

class NoticiasGetListError extends NoticiasState {
  final String? error;
  NoticiasGetListError({this.error});
}
