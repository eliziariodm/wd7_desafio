import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wd7_desafio/app/home/components/reserved_titles.dart';
import 'package:wd7_desafio/app/home/controllers/home_controller.dart';
import 'package:wd7_desafio/app/home/models/home_model.dart';

class TitlesData extends StatefulWidget {
  @override
  _TitlesDataState createState() => _TitlesDataState();
}

class _TitlesDataState extends State<TitlesData> {
  @override
  Widget build(BuildContext context) {
    final _homeController = Provider.of<HomeController>(context);
    final _homeModel = Provider.of<HomeModel>(context);
    final _reserved = Provider.of<ReservedTitles>(context).titlesList;

    return FutureBuilder(
      future: _homeController.data(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          dynamic loadTitles = snapshot.data;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: loadTitles.length,
            itemBuilder: (context, index) {
              return AspectRatio(
                aspectRatio: 2.3 / 3,
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ChangeNotifierProvider(
                    create: (context) => _reserved[index],
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(loadTitles[index].imageUrl),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFA2CC3A),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: ValueListenableBuilder(
                              valueListenable: _homeModel.selectedIndex,
                              builder: (context, value, child) => InkWell(
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        _homeModel.isReserved
                                            ? Icons.done
                                            : Icons.add,
                                      ),
                                      Text(
                                        'Reservar',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                                highlightColor: Colors.white60,
                                splashColor: Colors.white60,
                                onTap: () {
                                  _homeModel.onItemTapped(index);
                                  _homeModel.toggleReserved();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Erro'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Color(0xFFA2CC3A),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
            ),
          );
        }
      },
    );
  }
}
