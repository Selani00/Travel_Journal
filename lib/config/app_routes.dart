import 'package:travel_journal/pages/app_start_page.dart';
import 'package:travel_journal/pages/one_time_page_1.dart';
import 'package:travel_journal/pages/one_time_page_2.dart';
import 'package:travel_journal/pages/one_time_page_3.dart';

class AppRoutes {
  static final pages = {
    start: (context) => const AppStartPage(),
    onetimefirst: (context) => const OneTimeFirstPage(),
    onetimesecond: (context) => const OneTimeSecondPage(),
    onetimethird: (context) => const OneTimeThirdPage(),
  };

  static const start = '/';
  static const onetimefirst = '/onetimefirst';
  static const onetimesecond = '/onetimesecond';
  static const onetimethird = '/onetimethird';
}
