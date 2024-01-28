import 'package:go_router/go_router.dart';
import 'package:my_app_btw/src/feature/auth/presentasion/pages/login/login_pages.dart';
import 'package:my_app_btw/src/pages/dashboard.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return LoginPage();
        },
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) {
          return const DashBoard();
        },
      ),
    ],
  );
}

final appRouter = AppRouter();
