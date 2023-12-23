import 'package:travel_journal/pages/Notes/notes_add.dart';
import 'package:travel_journal/pages/app_start_page.dart';
import 'package:travel_journal/pages/map_page.dart';
import 'package:travel_journal/pages/one_time_page_1.dart';
import 'package:travel_journal/pages/one_time_page_2.dart';
import 'package:travel_journal/pages/one_time_page_3.dart';
import 'package:travel_journal/pages/accout_setup_page.dart';
import 'package:travel_journal/pages/Notes/notes_home.dart';

class AppRoutes {
  static final pages = {
    start: (context) => const AppStartPage(),
    onetimefirst: (context) => const OneTimeFirstPage(),
    onetimesecond: (context) => const OneTimeSecondPage(),
    onetimethird: (context) => const OneTimeThirdPage(),
    accoutsetup: (context) => AppSetUpPage(),
    notehomepage: (context) => NoteHomePage(),
    mappage:(context)=>MapPage(),
    noteaddpage: (context) =>NoteAddPage(),
    
  };

  static const start = '/';
  static const onetimefirst = '/onetimefirst';
  static const onetimesecond = '/onetimesecond';
  static const onetimethird = '/onetimethird';
  static const accoutsetup = '/accoutsetup';
  static const notehomepage = '/notehomepage';
  static const mappage = '/mappage';
  static const noteaddpage = '/noteaddpage';
  

}
