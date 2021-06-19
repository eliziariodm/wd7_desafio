import 'package:flutter/widgets.dart';

class HomeModel with ChangeNotifier {
  String? title;
  String? author;
  String? imageUrl;
  bool isReserved = false;

  HomeModel({this.title, this.author, this.imageUrl, this.isReserved = false});

  HomeModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    author = json['author'];
    imageUrl = json['imageUrl'];
    isReserved = json['isReserved'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['author'] = this.author;
    data['imageUrl'] = this.imageUrl;
    data['isReserved'] = this.isReserved;
    return data;
  }

  ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  onItemTapped(int index) {
    selectedIndex.value = index;
    notifyListeners();
  }

  void toggleReserved() {
    isReserved = !isReserved;
    notifyListeners();
  }
}
