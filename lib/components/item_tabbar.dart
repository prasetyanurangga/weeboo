import 'package:flutter/material.dart';
import 'package:weeboo/core_packages.dart';

class ItemTabBar extends StatelessWidget {
  const ItemTabBar({
    Key key,
    @required this.title,
    this.hasActive : false,
  }) : super(key: key);
  
  final String title;
  final bool hasActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1.copyWith(
            color: hasActive ? Theme.of(context).accentColor : Theme.of(context).primaryColorLight
          )
        ),
        VSpace(4),
        AnimatedContainer(
          curve: Curves.easeInOutCubic,
          duration: Times.medium,
          height: 2,
          width: hasActive ? 32 : 0,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: Corners.lgBorder
          ),
        )
      ],
    );
  }
}