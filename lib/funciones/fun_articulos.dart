String codigoArticulo(String codigo,[String bulto="", String atributo="", bool sinGuiones=false]) {
  String codigoArticulo=codigo.trim();
  if (bulto!="") {
    if (!sinGuiones) {
      codigoArticulo+= " - ";
    }
    codigoArticulo+= bulto.trim();
  }
  if (atributo!="") {
    if (!sinGuiones) {
      codigoArticulo+= " - ";
    }
    codigoArticulo+=atributo.trim();
  }
  return codigo;
}
String codigoDescripcion(String codigo, String descripcion, [String bulto="", String atributo="", bool sinGuiones=false]) {
  return "${codigoArticulo(codigo,bulto,atributo,sinGuiones)} - ${descripcion.trim()}";
}