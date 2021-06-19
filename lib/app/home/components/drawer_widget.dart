import 'package:flutter/material.dart';
import 'package:wd7_desafio/app/home/components/responsive_drawer/drawer_big.dart';
import 'package:wd7_desafio/app/home/components/responsive_drawer/drawer_little.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 400) {
          return DrawerBig();
        } else {
          return DrawerLittle();
        }
      },
    );
  }
}
