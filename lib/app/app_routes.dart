
import 'package:get/get.dart';
import 'package:hisabo/features/auth/ui/screens/splash_screen.dart';

class AppRoutes {
  static const splash = '/';

  static final pages = [
    GetPage(name: splash, page: () => SplashScreen()),
  ];
}
