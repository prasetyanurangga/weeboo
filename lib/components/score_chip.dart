import 'package:flutter/material.dart';

class ScoreChip extends StatelessWidget {
  const ScoreChip({
    Key key,
    @required this.score = 0.0,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  final double score;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).primaryColor
      ),
      padding: padding,
      child: Text(
        "$score",
        style: Theme.of(context).textTheme.bodyText2.copyWith(
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.w600,
          fontSize: 10
        ),
      ),
    );
  }
}