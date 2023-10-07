import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';


final appRouter = GoRouter(
    routes: [
      GoRoute(path: '/',builder: (context, state) => HomeScreen(),name: HomeScreen.name),
      GoRoute(path: '/buttons',builder: (context, state) => ButtonsScreen(),name: ButtonsScreen.name),
      GoRoute(path: '/cards', builder: (context, state) => CardScreen(),name: CardScreen.name),
      GoRoute(path: '/animated', builder: (context, state) => AnimatedScreen(),name: AnimatedScreen.name),
      GoRoute(path: '/progress', builder: (context, state) => ProgressScreen(),name: ProgressScreen.name),
      GoRoute(path: '/snackbar', builder: (context, state) => SnackBarScreen(),name: SnackBarScreen.name),
      GoRoute(path: '/ui_controls', builder: (context, state) => UIcontrolsScreen(),name: UIcontrolsScreen.name),
      GoRoute(path: '/infinite_scroll', builder: (context, state) => InfiniteScrollScreen(),name: InfiniteScrollScreen.name),
      GoRoute(path: '/app_tutorial', builder: (context, state) => AppTutorialScreen(),name: AppTutorialScreen.name),
          GoRoute(path: '/counter', builder: (context, state) => CounterScreen(),name: CounterScreen.name),
          GoRoute(path: '/theme_changer', builder: (context, state) => ThemeChangerScreen(),name: ThemeChangerScreen.name),
    ]
);