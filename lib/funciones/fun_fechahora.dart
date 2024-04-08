
import 'package:timezone/timezone.dart' as tzc;

DateTime convertirTZ(fecha, tz) {
  if (tz == null) {
    return fecha;
  }
  return tzc.TZDateTime.from(fecha, tz);
}
String fechaLocal(String fechaT, tz) {
  final fecha = convertirTZ(DateTime.parse(fechaT), tz);
  if (fecha.year == 1980) {
    return "";
  }
  return "${fecha.day.toString().padLeft(2, '0')}/${fecha.month.toString().padLeft(2, '0')}/${fecha.year.toString()}";
}

String fhLocal(String fechaT, [tz]) {
  final fecha = convertirTZ(DateTime.parse(fechaT), tz);
  if (fecha.year == 1980) {
    return "";
  }
  return "${fecha.day.toString().padLeft(2, '0')}/${fecha.month.toString().padLeft(2, '0')}/${fecha.year.toString()} ${fecha.hour.toString().padLeft(2, '0')}:${fecha.minute.toString().padLeft(2, '0')}";
}