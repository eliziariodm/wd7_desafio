import 'package:flutter/material.dart';
import 'package:wd7_desafio/app/home/components/titles_data.dart';

class BelowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mais Lidos',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: TitlesData(),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Recomendados',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: TitlesData(),
          ),
        ],
      ),
    );
  }
}
