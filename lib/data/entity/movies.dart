
class Movies {
  int movie_id;
  String movie_name;
  String movie_image;
  double movie_price;

  Movies({
    required this.movie_id,
    required this.movie_name,
    required this.movie_image,
    required this.movie_price
  });
}
Future<List<Movies>> moviesLoad() async{
  var moviesList = <Movies>[];
  var m1 = Movies(movie_id: 1, movie_name: "The Shawshank Redemption", movie_image: "esaretin-bedeli.jpg", movie_price: 3.99);
  var m2 = Movies(movie_id: 2, movie_name: "The Godfather", movie_image: "father.jpg", movie_price: 2.99);
  var m3 = Movies(movie_id: 3, movie_name: "The Dark Knight", movie_image: "batman.jpg", movie_price: 1.99);
  var m4 = Movies(movie_id: 4, movie_name: "The Lord of the Rings: The Return of the King", movie_image: "lord.jpg", movie_price: 0.99);
  var m5 = Movies(movie_id: 5, movie_name: "Schindler's List", movie_image: "slist.jpg", movie_price: 1.29);
  var m6 = Movies(movie_id: 6, movie_name: "12 Angry Men", movie_image: "12.jpg", movie_price: 1.49);
  var m7 = Movies(movie_id: 7, movie_name: "The Godfather Part II", movie_image: "father2.jpg", movie_price: 1.99);
  var m8 = Movies(movie_id: 8, movie_name: "The Lord of the Rings: The Fellowship of the Ring", movie_image: "lordt2.jpg", movie_price: 0.99);

  moviesList.add(m1);
  moviesList.add(m2);
  moviesList.add(m3);
  moviesList.add(m4);
  moviesList.add(m5);
  moviesList.add(m6);
  moviesList.add(m7);
  moviesList.add(m8);
  return moviesList;

}