import 'package:flutter/material.dart';
import 'package:flutter_project3/data/entity/movies.dart';

class DetailPage extends StatefulWidget {
  Movies movies;

  DetailPage({required this.movies});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movies.movie_name,
        style: TextStyle(
          fontFamily: "Bebas",
          fontSize: 36
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 380, height: 280,
                child: Image.asset("images/${widget.movies.movie_image}")),
            Text("${widget.movies.movie_price}  T L", style: TextStyle(fontSize: 36, fontFamily: "Bebas"),)
          ],
        ),
      ),
    );
  }
}
