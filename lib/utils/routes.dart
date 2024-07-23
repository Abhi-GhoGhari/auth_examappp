import 'package:auth_examappp/presentation/page/home_page/home_page.dart';
import 'package:auth_examappp/presentation/page/notedetail_page/notedetail_page.dart';
import 'package:auth_examappp/presentation/page/signin_page/signin_page.dart';
import '../headers.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String signin_ppage = '/';
  String home_page = 'home_page';
  String notedetail_page = 'notedetail_page';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const SigninPage(),
    'home_page': (context) => const HomePage(),
    'notedetail_page': (context) => const NotedetailPage(),
  };
}
