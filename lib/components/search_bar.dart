import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weeboo/_utils/spacers.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key, @required this.controller, @required this.onSearch}) : super(key: key);
  final TextEditingController controller;
  final Function onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color : Theme.of(context).primaryColorDark
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/search.svg", height: 16),
          HSpace(16),
          Expanded(
            child: TextField(
              onSubmitted: onSearch,
              textInputAction: TextInputAction.search,
              controller: controller,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Theme.of(context).accentColor
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search here ...',
                hintStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Theme.of(context).accentColor
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}