import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weeboo/pages/genre_page.dart';
import 'package:weeboo/pages/home_page.dart';
import 'package:weeboo/core_packages.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndexNav;
  PageController _pageViewController ;

  void _onItemNavTapped(index){
    setState(() => _selectedIndexNav = index);
    _pageViewController.animateToPage(index, duration: Times.medium, curve: Curves.easeInOutCubic);
  }

  void _onPageViewChange(index){
    setState(() => _selectedIndexNav = index);
  }

  @override
  void initState() { 
    super.initState();
    _selectedIndexNav = 0;
    _pageViewController = PageController();
  }

  @override
  Widget build(BuildContext context) {

    Widget _buildBody(){
      return SafeArea(
        child: PageView(
          onPageChanged: _onPageViewChange,
          controller: _pageViewController,
          children: [
            HomePage(),
            GenrePage(),
            Container(
              child: Center(
                child: Text("hellow WOrd 3"),
              ) 
            ),
          ],
        )
      );
    }

    Color _changeIconColor(int position){
      return _selectedIndexNav == position ? Theme.of(context).accentColor : Theme.of(context).primaryColorDark;
    }

    Widget _buildBottomNavBar(){
      return BottomNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: _changeIconColor(0),
            ),
            label:"Home"
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/genre.svg',
              color: _changeIconColor(1),
            ),
            label:"Genre",
            
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/mark_outline.svg',
              color: _changeIconColor(2),
            ),
            label:"Collection"
          ),
        ],
        currentIndex: _selectedIndexNav,
        onTap: _onItemNavTapped,
      );
    }

    
    
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: _buildBottomNavBar(),
      body: _buildBody(),
    );
  }
}