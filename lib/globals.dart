var key = "8c657258e7594a6b8dcb57190e730525";
String urlBase = "newsapi.org";
String url = "/v2/";
bool _estaCargando = false;
bool get estaCargando => _estaCargando;
set estaCargando(bool valor) {
  _estaCargando = valor;
}
