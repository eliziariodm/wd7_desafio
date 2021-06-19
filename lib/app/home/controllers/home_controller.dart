import 'package:wd7_desafio/app/home/models/home_model.dart';
import 'package:wd7_desafio/app/home/repositories/home_repository.dart';

class HomeController {
  List<HomeModel> homeModel = [];

  HomeRepository _homeRepository = HomeRepository();

  Future data() async {
    return homeModel = await _homeRepository.fetchTitles();
  }
}
