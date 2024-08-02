import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  /// formatted to [EEE, dd MMM yyyy, HH:mm]
  String toStringFormatted([String? pattern]) {
    return DateFormat(pattern ?? 'EEEE, dd MMMM yyyy', 'id_ID').format(this);
  }
}

extension NumX on num {
  String toCurrencyFormatted() {
    return NumberFormat("#,##0", "id_ID").format(this);
  }
}
