import 'package:timeago/timeago.dart' as TimeAgo;

String formatApiTime(double time) => TimeAgo.format(
      DateTime.fromMillisecondsSinceEpoch(
        time.toInt() * 1000,
      ),
      locale: 'ar',
    );
