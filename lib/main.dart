import 'package:aplicacion_numero_cuatro/config/Theme/theme.dart';
import 'package:aplicacion_numero_cuatro/presentation/providers/news_provider.dart';
import 'package:aplicacion_numero_cuatro/presentation/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NewsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomePage(),
          '/detail': (context) => const DetailPage(),
        },
        theme: ThemeApp().theme(),
      ),
    );
  }
}
