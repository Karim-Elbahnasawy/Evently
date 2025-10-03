import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get toFormatedDate {
    DateFormat formater = DateFormat('dd-mm-yyyy');
    return formater.format(this);
  }

  String get viewMonth {
    DateFormat formater = DateFormat('MMMM');
    return formater.format(this).substring(0, 3);
  }

  String get viewDay {
    DateFormat formater = DateFormat('dd');
    return formater.format(this);
  }
  String get toFormatedTime{
    return DateFormat('h:mm a').format(this);
  }
}