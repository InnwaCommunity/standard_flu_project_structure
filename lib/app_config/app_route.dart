

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_structure/module/splash/splash_screen.dart';


final goRouter = GoRouter(
  initialLocation: '/',
  observers: [
    GoRouterObserver(),
  ],
  routes: [
    GoRoute(
      path: SplashScreen.tag,
      name: SplashScreen.tag,
      builder: (context, state) => const SplashScreen(),
    ),
  ]);

  
class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('MyTest didPush: $route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('MyTest didPop: $route');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('MyTest didRemove: $route');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    log('MyTest didReplace: $newRoute');
  }
}
