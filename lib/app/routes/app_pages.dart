import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/about_view.dart';
import 'package:hello_sourcing/app/views/contact_view.dart';
import 'package:hello_sourcing/app/views/home_view.dart';
import 'package:hello_sourcing/app/views/infographic_view.dart';
import 'package:hello_sourcing/app/views/main_view.dart';
import 'package:hello_sourcing/app/views/service_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(
        child: MainView(),
      ),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => HomeView(
        child: AboutView(),
      ),
    ),
    GetPage(
      name: Routes.SERVICE,
      page: () => HomeView(
        child: ServiceView(),
      ),
    ),
    GetPage(
      name: Routes.INFOGRAPHIC,
      page: () => HomeView(
        child: InfographicView(),
      ),
    ),
    GetPage(
      name: Routes.CONTACT,
      page: () => HomeView(
        child: ContactView(),
      ),
    ),
  ];
}
