part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  static const TRUSTCONFIDENCE = _Paths.TRUSTCONFIDENCE;
  static const WHOWEARE = _Paths.WHOWEARE;
  static const PRODUCTS = _Paths.PRODUCTS;
  static const OBJECTIVES = _Paths.OBJECTIVES;
  static const HOME = _Paths.HOME;
  static const CONTACT = _Paths.CONTACT;

  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(animation: animation, child: child);
      },
    );
  }
}

abstract class _Paths {
  static const TRUSTCONFIDENCE = '/trustconfidence';
  static const WHOWEARE = '/whoweare';
  static const PRODUCTS = '/products';
  static const OBJECTIVES = '/objectives';
  static const HOME = '/home';
  static const CONTACT = '/contact';
}
