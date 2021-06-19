import 'package:flutter/material.dart';
import 'package:wd7_desafio/app/home/components/below_widget.dart';
import 'package:wd7_desafio/app/home/components/head_widget.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadWidget(),
          BelowWidget(),
        ],
      ),
    );
  }
}
