class ItemModel {
  int page;
  int totalResult;
  int totalPages;
  List<Result> _results = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['results'].length);
    page = parsedJson['page'];
    totalResult = parsedJson['totalResult'];
    totalPages = parsedJson['totalPages'];
    List<Result> temp = [];
    for (int i = 0; i < parsedJson['results'].length; i++) {
      Result result = Result(parsedJson['results'][i]);
      temp.add(result);
    }
    _results = temp;
  }

  List<Result> get results => _results;
  int get total_pages => totalPages;
  int get total_results => totalResult;
  int get pages => page;
}

class Result {
  int voteCount;
  int id;
  bool video;
  var voteAvg;
  String title;
  double popularity;
  String posterPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreId = [];
  String backdropPath;
  bool isAdult;
  String overview;
  String releaseDate;

  Result(result) {
    voteCount = result['vote_count'];
    id = result['_id'];
    video = result['_video'];
    voteAvg = result['vote_avg'];
    title = result['_title'];
    popularity = result['_popularity'];
    posterPath = result['poster_path'];
    originalLanguage = result['original_language'];
    originalTitle = result['original_title'];
    for (int i = 0; i < result['genre_id'].length; i++) {
      genreId.add(result['genre_id'][i]);
    }
    backdropPath = result['backdrop_path'];
    isAdult = result['is_adult'];
    overview = result['_overview'];
    releaseDate = result['release_date'];
  }

  int get vote_count => voteCount;
  int get _id => id;
  bool get _video => video;
  double get vote_avg => voteAvg;
  String get _title => title;
  double get _popularity => popularity;
  String get poster_path => posterPath;
  String get original_language => originalLanguage;
  String get original_title => originalTitle;
  List<int> get genre_iid => genreId = [];
  String get backdrop_path => backdropPath;
  bool get is_adult => isAdult;
  String get _overview => overview;
  String get release_date => releaseDate;
}
