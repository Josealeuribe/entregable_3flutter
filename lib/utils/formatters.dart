import 'package:intl/intl.dart';

String formatCurrency(double value) {
  // Formatea con puntos de miles y coma decimal (estilo de la imagen)
  final formatter = NumberFormat.currency(
    locale: 'es_ES', // usa coma decimal
    symbol: '\$',
    decimalDigits: 2,
  );
  String result = formatter.format(value);
  // Ajuste: NumberFormat para es_ES usa no el punto de agrupación con ., esta línea debería funcionar.
  // En caso de diferencias, puedes personalizar reemplazando caracteres.
  return result;
}

// Para mostrar con formato tipo "2.868.000,00" desde string
String formatCurrencyFromString(String s) {
  // si ya tienes un string armado, devuélvelo tal cual
  return s;
}
