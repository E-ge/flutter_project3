import 'package:flutter/material.dart';
import 'package:flutter_project3/data/entity/movies.dart';
import 'package:flutter_project3/ui/views/detail_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("M O V I E S",
            style: TextStyle(
                fontFamily: "Bebas",
                fontSize: 36),),
          centerTitle: true,),
      body: FutureBuilder<List<Movies>>(
        future: moviesLoad(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var moviesList = snapshot.data;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.8),
              itemCount: moviesList!.length,
              itemBuilder: (context,index){
                var movies = moviesList[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    DetailPage(movies: movies,)));
                  },
                  child: Card(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 280, height: 300,
                            child: Image.asset("images/${movies.movie_image}")),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${movies.movie_price} TL", style: TextStyle(fontSize: 24,fontFamily: "Bebas"),),
                            ElevatedButton(onPressed: (){
                              print("${movies.movie_name} add to cart");
                            }, child: Text("C A R T",style: TextStyle(fontFamily: "Bebas", fontSize: 24),))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }else{
            return const Center();
          }
        },
      ),
    );
  }
}
