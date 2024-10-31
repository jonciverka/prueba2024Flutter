import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba2024/Providers/noticias_provider.dart';
import 'package:prueba2024/bloc/noticias/noticias_event.dart';
import 'package:prueba2024/bloc/noticias/noticias_state.dart';

class NoticiasBloc extends Bloc<NoticiasEvent, NoticiasState> {
  NoticiasProvider noticiasProvider = NoticiasProvider();
  NoticiasBloc() : super(NoticiasInitial()) {
    on<NoticiasGetList>((event, emit) => _noticiasGetList(event, emit));
  }

  void _noticiasGetList(
      NoticiasGetList event, Emitter<NoticiasState> emit) async {
    emit(NoticiasGetListLoading());
    final noticias = await noticiasProvider.obtenerNoticias(event.context);
    emit(NoticiasGetListSuccess(noticia: noticias));
    state.noticias = noticias;
  }
}
