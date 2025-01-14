import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = GoRouter(
    routes: [
      GoRoute(
          name: HomeScreen.routeName,
          path: HomeScreen.routeName,
          builder: (context, state) => HomeScreen(),
          routes: [
            GoRoute(
              name: SearchScreen.routeName,
              path: SearchScreen.routeName,
              builder: (context, state) => SearchScreen(),
            ),
          ]),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      routerConfig: router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 1),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
        useMaterial3: true,
      ),
    );
  }
}
