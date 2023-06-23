

class Genres{
  final String


  name;//atribuit

  Genres(this.name);//contructor
}

List<Genres> genres = [
  Genres('All'),
  Genres('Action'),
  Genres('Drama'),
  Genres('Honor'),
  Genres('Romance'),
  Genres('Fantasy'),
];
class Cast {
  final String profileImageUrl;
  final String name;

  Cast(this.profileImageUrl,this.name);
}
class Trailers {
  final String trailers;

  Trailers(this.trailers);
}
class  Movie {
  final String image;
  final String title;
  final List<Cast> casters;
  final List<Trailers> trailers;
  Movie(this.image,this.title,this.casters,this.trailers);

}
List<Movie> movies = [
  Movie('images/coco.jpg','Coco', [Cast('images/jordanpee.jpg','jordan'),Cast('images/tranthanh.jpg','trấn thành'),Cast('images/tomcruise.jpg','tomcruise '),Cast('images/adamsandler.jpg','adam')],[Trailers('images/tranthanh.jpg'),Trailers('images/tranthanh.jpg'),Trailers('images/tranthanh.jpg'),Trailers('images/tranthanh.jpg')]),
  Movie('images/frozen.jpg','Frozen',[],[]),
  Movie('images/toystory.jpg','Toy story 3',[],[]),
  Movie('images/vuasutu.jpg', 'Lion King',[],[]),
  Movie('images/nemo.jpg','Finding Nemo',[],[])
]; 

