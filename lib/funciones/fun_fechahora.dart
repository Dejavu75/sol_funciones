
import 'package:timezone/timezone.dart' as tzc;

DateTime convertirSafeParser({required String fecha, DateTime? valorErroneo }) {
  try {
    return DateTime.parse(fecha);
  } catch (e) {
    return valorErroneo ?? DateTime(1980);
  }
 }
DateTime convertirTZ(fecha, tz) {
  if (tz == null) {
    return fecha;
  }
  return tzc.TZDateTime.from(fecha, tz);
}

String fechaCorta(DateTime fecha, [tz]) {
  fecha = convertirTZ(fecha, tz);
  if (fecha.year == 1980) {
    return "";
  }
  return "${fecha.day.toString().padLeft(2, '0')}/${fecha.month.toString().padLeft(2, '0')}/${fecha.year.toString().substring(2)}";
}
String fechaHoraCorta(DateTime fecha, [tz]) {
  fecha = convertirTZ(fecha, tz);
  if (fecha.year == 1980) {
    return "";
  }
  return "${fecha.day.toString().padLeft(2, '0')}/${fecha.month.toString().padLeft(2, '0')}/${fecha.year.toString().substring(2)} ${fecha.hour.toString().padLeft(2, '0')}:${fecha.minute.toString().padLeft(2, '0')}";
}
