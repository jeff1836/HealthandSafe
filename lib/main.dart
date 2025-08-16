void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (_, __) => SplashPage()),
      GoRoute(path: '/login', builder: (_, __) => LoginPage()),
      GoRoute(path: '/dashboard', builder: (_, __) => DashboardPage()),
    ],
    redirect: (context, state) {
      final isLoggedIn = AuthService.instance.isAuthenticated;
      final isSplash = state.location == '/splash';

      if (isSplash) return null; // allow splash to show

      if (!isLoggedIn) return '/login';
      return null;
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(...),
    );
  }
}
