import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:wd7_desafio/app/home/models/home_model.dart';

class HomeRepository {
  Future<List<HomeModel>> fetchTitles() async {
    String jsonString = await rootBundle.loadString('jsons/titles.json');
    List _list = jsonDecode(jsonString);
    return _list.map((json) => HomeModel.fromJson(json)).toList();
  }
}
