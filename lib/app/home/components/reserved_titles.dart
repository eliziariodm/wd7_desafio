import 'package:flutter/widgets.dart';
import 'package:wd7_desafio/app/home/models/home_model.dart';

class ReservedTitles with ChangeNotifier {
  List<HomeModel> _titlesList = [];

  List<HomeModel> get titlesList => [..._titlesList];

  List<HomeModel> get titlesListReserved {
    return _titlesList.where((titles) => titles.isReserved).toList();
  }

  void addTitles(HomeModel titles) {
    _titlesList.add(titles);
    notifyListeners();
  }
}
