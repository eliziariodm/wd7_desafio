import 'package:flutter/material.dart';
import 'package:wd7_desafio/app/home/components/body_widget.dart';
import 'package:wd7_desafio/app/home/components/drawer_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFA2CC3A),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Cadastrar'),
                value: 0,
              ),
              PopupMenuItem(
                child: Text('Títulos Reservados'),
                value: 1,
              ),
            ],
            onSelected: (int selectedValue) {
              print('$selectedValue');
            },
          ),
        ],
      ),
      body: BodyWidget(),
      drawer: DrawerWidget(),
    );
  }
}
