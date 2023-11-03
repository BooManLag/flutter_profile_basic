import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/skills_page.dart';
import 'pages/interests_page.dart';

void main() => runApp(const MyApp());

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
      routes: [
        GoRoute(
          path: 'profile',
          pageBuilder: (context, state) =>
              const MaterialPage(child: ProfilePage()),
        ),
        GoRoute(
          path: 'skills',
          pageBuilder: (context, state) => MaterialPage(child: SkillsPage()),
        ),
        GoRoute(
          path: 'interests',
          pageBuilder: (context, state) => MaterialPage(child: InterestsPage()),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Profile App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: goRouter,
      builder: (context, router) {
        return Scaffold(
          body: router,
        );
      },
    );
  }
}
