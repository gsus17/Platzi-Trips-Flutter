import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter/description_place.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {

    final star_half =Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    final star_border =Container(
      margin: EdgeInsets.only(
          top: 323,
          right: 3
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final title_starts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border,
          ],
        )
      ],
    );

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      children: <Widget>[
        title_starts,
        description
      ],
    );
  }
}