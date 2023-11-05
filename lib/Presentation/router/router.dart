
import 'package:commerce_uptick_task/Presentation/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

GoRouter goRouter = GoRouter(
  initialLocation: homepath,
  navigatorKey: _navigatorKey,
  routes: [
     GoRoute(
      path: homepath,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
     ),
     
  ],
);

