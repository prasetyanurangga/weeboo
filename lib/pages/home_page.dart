import 'package:flutter/material.dart';
import 'package:weeboo/_utils/spacers.dart';
import 'package:weeboo/components/item_manga_anime.dart';
import 'package:weeboo/components/item_tabbar.dart';
import 'package:weeboo/components/search_bar.dart';
import 'package:weeboo/core_packages.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndexTabbar;
  TextEditingController searchController;

  @override
  void initState() { 
    super.initState();
    _currentIndexTabbar = 0;
    searchController = TextEditingController();
  }

  void onSearch(query){
    print(query);
    searchController.clear();
  }

  void _onTapItemTabbar(index){
    safePrint("index: $index");
    setState(() => _currentIndexTabbar = index);
  }

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
          child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [

          VSpace(32),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "Weeboo",
              style: Theme.of(context).textTheme.headline4.copyWith(color: Theme.of(context).accentColor)
            ),
          ),
          VSpace(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: SearchBar(controller: searchController, onSearch: onSearch),
          ),
          VSpace(24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    _onTapItemTabbar(0);
                  },
                  child: ItemTabBar(title: "Manga", hasActive: _currentIndexTabbar == 0 ? true : false),
                ),
                HSpace(16),
                GestureDetector(
                  onTap: (){
                    _onTapItemTabbar(1);
                  },
                  child: ItemTabBar(title: "Anime", hasActive: _currentIndexTabbar == 1 ? true : false),
                ),
                
              ],
            ),
          ),
          VSpace(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).primaryColorLight
                  )
                ),
                Text(
                  "More",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).primaryColorLight
                  )
                ),
              ],
            ),
          ),
          VSpace(16),
          Container(
            padding: EdgeInsets.only(left: 32),
            height: 275,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ItemMangaAnime(),
                ItemMangaAnime(),
                ItemMangaAnime(),
                ItemMangaAnime(),
                ItemMangaAnime()
              ],
            ),
          ),
          VSpace(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "This Season",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).primaryColorLight
                  )
                ),
                Text(
                  "More",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).primaryColorLight
                  )
                ),
              ],
            ),
          ),
          VSpace(16),
          Container(
            padding: EdgeInsets.only(left: 32),
            height: 275,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ItemMangaAnime(),
                ItemMangaAnime(),
                ItemMangaAnime(),
                ItemMangaAnime(),
                ItemMangaAnime()
              ],
            ),
          ),
        ],
      ),
    );
  }
}