
String tamanoArchivo(num tamano) {
  if (tamano < 1024) {
    return "$tamano bytes";
  } else if (tamano < 1024 * 1024) {
    return "${(tamano / 1024).toStringAsFixed(2)} KB";
  } else if (tamano < 1024 * 1024 * 1024) {
    return "${(tamano / 1024 / 1024).toStringAsFixed(2)} MB";
  } else {
    return "${(tamano / 1024 / 1024 / 1024).toStringAsFixed(2)} GB";
  }
}