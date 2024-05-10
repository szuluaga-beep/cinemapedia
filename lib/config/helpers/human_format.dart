import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number) {
    final formattedNumber =
        NumberFormat.compactCurrency(decimalDigits: 1, symbol: '', locale: 'en')
            .format(number);
    return formattedNumber;
  }
}
