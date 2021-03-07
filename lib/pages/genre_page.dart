import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weeboo/components/item_genre.dart';
import 'package:weeboo/components/search_bar.dart';
import 'package:weeboo/core_packages.dart';
import 'package:weeboo/models/genre.dart';

class GenrePage extends StatefulWidget {
  GenrePage({Key key}) : super(key: key);

  @override
  _GenrePageState createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {
  TextEditingController searchController;
  List<Genre> _listGenre  = [];

  void onSearch(query){
    setState(() => _listGenre = _listGenre.where((e) {
      var title = e.title.toLowerCase();
      return title.contains(query);
    }).toList());
  }

  @override
  void initState() { 
    super.initState();
    searchController = TextEditingController();
    searchController.addListener(() {
      print(searchController.text.isEmpty);
      if(searchController.text.isEmpty){
        setState(() => _listGenre = dataGenre );
      }
    });
    setState(() => _listGenre = dataGenre );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              VSpace(32),
              Text(
                "Genre",
                style: Theme.of(context).textTheme.headline4.copyWith(color: Theme.of(context).accentColor)
              ),
              VSpace(32),
              SearchBar(controller: searchController, onSearch: onSearch),

            ]),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(32),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
            delegate: SliverChildBuilderDelegate((BuildContext context, int index){
              return ItemGenre(
                title: _listGenre[index].title,
                icon: _listGenre[index].icon,
                onPress: (){
                  print(index);
                },
              );
            }, childCount: _listGenre.length),
          ),
        )
      ],
    );
  }
}