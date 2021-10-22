import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/colors.dart';
import 'package:movie_app/core/models/movie_model.dart';
import 'package:movie_app/ui/custom_widgets/movie_tile.dart';

class MovieListScreen extends StatefulWidget {
  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  final movies = [];
  bool isGotData = false;
  @override
  void initState() {
    _getdata();
    super.initState();
  }

  _getdata() async {
    final snapShot = await fireStore.collection('movieapp123').get();
    for (int i = 0; i < snapShot.docs.length; i++)
      movies.add(Movie.fromJson(snapShot.docs[i].data()));
    isGotData = true;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: pri_color,
      body: Padding(
        padding: EdgeInsets.only(left: 15, top: 30),
        child: isGotData
            ? ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) => MovieTile(movies[index]),
              )
            : Center(child: CircularProgressIndicator()),
      ),
    ));
  }
}
