import 'package:bookly_app/Features/Splash/presentation/Views/splash_view.dart';
import 'package:bookly_app/Features/home/presentation/Views/home_view.dart';
import 'package:bookly_app/Features/home/presentation/Views/home_view_details.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => const BookViewDitails(),
      ),
    ],
  );
}
