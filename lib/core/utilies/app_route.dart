import 'package:go_router/go_router.dart';
import 'package:my_bookly_app/features/home/presentation/views/home_view.dart';
import 'package:my_bookly_app/features/splash/presentation/views/spalsh_view.dart';

abstract class AppRoute {
  static const String kHomeView = "/homeView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => SpalshView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => HomePage())
    ],
  );
}
