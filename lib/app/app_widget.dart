import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wd7_desafio/app/home/components/reserved_titles.dart';
import 'package:wd7_desafio/app/home/controllers/home_controller.dart';
import 'package:wd7_desafio/app/home/views/home_view.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ReservedTitles(),
        ),
        Provider<HomeController>(
          create: (context) => HomeController(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(brightness: Brightness.dark),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.green,
          splashColor: Color(0xFFA2CC3A),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
