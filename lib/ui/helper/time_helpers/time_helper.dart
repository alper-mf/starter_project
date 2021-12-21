import 'package:intl/intl.dart';

class TimeHelper {
  String timeConverter(var dateTime) {
    var strToDateTime = DateTime.fromMillisecondsSinceEpoch(dateTime);
    final convertLocal = strToDateTime.toLocal();
    var newFormat = DateFormat("HH:mm");
    var format = DateFormat('dd/MM/yy HH:mm');
    var diff = DateTime.now().difference(strToDateTime);
    var time = '';
    if (diff.inDays > 1) {
      time = format.format(convertLocal);
    } else {
      time = newFormat.format(convertLocal);
    }
    return time;
  }
}
