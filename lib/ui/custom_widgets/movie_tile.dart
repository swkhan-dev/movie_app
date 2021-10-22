import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/styles.dart';
import 'package:movie_app/core/models/movie_model.dart';

class MovieTile extends StatelessWidget {
  final Movie movie;
  MovieTile(this.movie);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          FadeInImage(
              placeholder: AssetImage("assets/images/Endgame-Lead-1.jpg"),
              height: 100,
              width: 160,
              fit: BoxFit.cover,
              image: NetworkImage("${movie.imgUrl}")),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${movie.name}",
                    style: movieTextStyle,
                  ),
                  Text(
                    "${movie.detail}",
                    style: movieTextStyle.copyWith(fontSize: 14),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
