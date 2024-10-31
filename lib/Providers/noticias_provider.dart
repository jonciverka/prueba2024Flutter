import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prueba2024/Modelos/noticia.dart';
import '../../globals.dart' as globals;

class NoticiasProvider {
  final String _noticiasTodas = "everything";

  Future obtenerNoticias(BuildContext context) async {
    late http.Response response;
    final url = Uri.https(globals.urlBase, "${globals.url}$_noticiasTodas",
        {"q": "apple", "apiKey": "8c657258e7594a6b8dcb57190e730525"});
    try {
      response = await http.get(url);
      debugPrint(url.toString());
      debugPrint(response.body.toString());
    } on SocketException {
      throw "Error al obtener la notificas 1";
    } catch (exc) {
      throw "Error al obtener la notificas 2 ";
    }
    if (response.statusCode == 200) {
      var respObj = jsonDecode(response.body);
      List res = listaNoticiaFromJson(respObj["articles"]);
      return res;
    } else {
      throw 'Error al obtener las noticias 3';
    }
  }
}
