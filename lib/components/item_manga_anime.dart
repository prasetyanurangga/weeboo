import 'package:flutter/material.dart';
import 'package:weeboo/_widgets/app_image.dart';
import 'package:weeboo/components/score_chip.dart';
import 'package:weeboo/core_packages.dart';

class ItemMangaAnime extends StatelessWidget {
  const ItemMangaAnime({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 24),
      child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: HostedImage("https://cdn.myanimelist.net/images/anime/8/77831.jpg"),
          ),
          VSpace(4),
          Text(
            "12345678912...",
            style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.w600
            )
          ),
          VSpace(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Score",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).primaryColorLight,
                  fontWeight: FontWeight.w600
                )
              ),
              ScoreChip(score: 7.9, padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2)),
            ],
          ),
          VSpace(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "12 eps",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).primaryColorLight,
                  fontWeight: FontWeight.w600,
                  fontSize: 10
                )
              ),
              Text(
                " - ",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).primaryColorLight,
                  fontWeight: FontWeight.w600,
                  fontSize: 10
                )
              ),
              Text(
                "Currently Airing",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).primaryColorLight,
                  fontWeight: FontWeight.w600,
                  fontSize: 10
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}