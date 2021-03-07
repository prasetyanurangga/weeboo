import 'package:flutter/material.dart';
import 'package:weeboo/core_packages.dart';

class ItemGenre extends StatelessWidget {
  const ItemGenre({Key key, @required this.title, @required this.icon, @required this.onPress}) : super(key: key);

  final String title;
  final String icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(24),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),

          // borderRadius: BorderRadius.circular(24),
          // When the user taps the button, show a snackbar.
          onTap: onPress,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 64,
                  width: 64,
                  child: Image.asset(icon)
                ),
                VSpace(12),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).accentColor
                  )
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}