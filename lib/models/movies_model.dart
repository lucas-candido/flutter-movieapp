// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

class Movies {
  String? posterPath;
  int? id;
  String? backdropPath;
  int? totalResults;
  bool? public;
  int? revenue;
  int? page;
  List<Movie>? listMovie;
  String? iso6391;
  int? totalPages;
  String? description;
  String? iso31661;
  double? averageRating;
  int? runtime;
  String? name;

  Movies({
    this.posterPath,
    this.id,
    this.backdropPath,
    this.totalResults,
    this.public,
    this.revenue,
    this.page,
    this.listMovie,
    this.iso6391,
    this.totalPages,
    this.description,
    this.iso31661,
    this.averageRating,
    this.runtime,
    this.name,
  });

  Movies.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    id = json['id'];
    backdropPath = json['backdrop_path'];
    totalResults = json['total_results'];
    public = json['public'];
    revenue = json['revenue'];
    page = json['page'];
    if (json['results'] != null) {
      listMovie = <Movie>[];
      json['results'].forEach((v) {
        listMovie!.add(Movie.fromJson(v));
      });
    }
    iso6391 = json['iso_639_1'];
    totalPages = json['total_pages'];
    description = json['description'];
    iso31661 = json['iso_3166_1'];
    averageRating = json['average_rating'];
    runtime = json['runtime'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['poster_path'] = posterPath;
    data['id'] = id;
    data['backdrop_path'] = backdropPath;
    data['total_results'] = totalResults;
    data['public'] = public;
    data['revenue'] = revenue;
    data['page'] = page;
    if (listMovie != null) {
      data['results'] = listMovie!.map((v) => v.toJson()).toList();
    }
    data['iso_639_1'] = iso6391;
    data['total_pages'] = totalPages;
    data['description'] = description;
    data['iso_3166_1'] = iso31661;
    data['average_rating'] = averageRating;
    data['runtime'] = runtime;
    data['name'] = name;
    return data;
  }

  @override
  String toString() {
    return 'Movies(posterPath: $posterPath, id: $id, backdropPath: $backdropPath, totalResults: $totalResults, public: $public, revenue: $revenue, page: $page, listMovie: $listMovie, iso6391: $iso6391, totalPages: $totalPages, description: $description, iso31661: $iso31661, averageRating: $averageRating, runtime: $runtime, name: $name)';
  }

  Movies copyWith({
    String? posterPath,
    int? id,
    String? backdropPath,
    int? totalResults,
    bool? public,
    int? revenue,
    int? page,
    List<Movie>? listMovie,
    String? iso6391,
    int? totalPages,
    String? description,
    String? iso31661,
    double? averageRating,
    int? runtime,
    String? name,
  }) {
    return Movies(
      posterPath: posterPath ?? this.posterPath,
      id: id ?? this.id,
      backdropPath: backdropPath ?? this.backdropPath,
      totalResults: totalResults ?? this.totalResults,
      public: public ?? this.public,
      revenue: revenue ?? this.revenue,
      page: page ?? this.page,
      listMovie: listMovie ?? this.listMovie,
      iso6391: iso6391 ?? this.iso6391,
      totalPages: totalPages ?? this.totalPages,
      description: description ?? this.description,
      iso31661: iso31661 ?? this.iso31661,
      averageRating: averageRating ?? this.averageRating,
      runtime: runtime ?? this.runtime,
      name: name ?? this.name,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movies &&
        other.posterPath == posterPath &&
        other.id == id &&
        other.backdropPath == backdropPath &&
        other.totalResults == totalResults &&
        other.public == public &&
        other.revenue == revenue &&
        other.page == page &&
        listEquals(other.listMovie, listMovie) &&
        other.iso6391 == iso6391 &&
        other.totalPages == totalPages &&
        other.description == description &&
        other.iso31661 == iso31661 &&
        other.averageRating == averageRating &&
        other.runtime == runtime &&
        other.name == name;
  }

  @override
  int get hashCode {
    return posterPath.hashCode ^
        id.hashCode ^
        backdropPath.hashCode ^
        totalResults.hashCode ^
        public.hashCode ^
        revenue.hashCode ^
        page.hashCode ^
        listMovie.hashCode ^
        iso6391.hashCode ^
        totalPages.hashCode ^
        description.hashCode ^
        iso31661.hashCode ^
        averageRating.hashCode ^
        runtime.hashCode ^
        name.hashCode;
  }
}

class Movie {
  String? posterPath;
  bool? adult;
  String? overview;
  String? releaseDate;
  String? originalTitle;
  List<int>? genreIds;
  int? id;
  String? mediaType;
  String? originalLanguage;
  String? title;
  String? backdropPath;
  double? popularity;
  int? voteCount;
  bool? video;
  dynamic voteAverage;

  Movie(
      {this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.originalTitle,
      this.genreIds,
      this.id,
      this.mediaType,
      this.originalLanguage,
      this.title,
      this.backdropPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.voteAverage});

  Movie.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['poster_path'] = posterPath;
    data['adult'] = adult;
    data['overview'] = overview;
    data['release_date'] = releaseDate;
    data['original_title'] = originalTitle;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['media_type'] = mediaType;
    data['original_language'] = originalLanguage;
    data['title'] = title;
    data['backdrop_path'] = backdropPath;
    data['popularity'] = popularity;
    data['vote_count'] = voteCount;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    return data;
  }

  @override
  String toString() {
    return 'Movie(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, originalTitle: $originalTitle, genreIds: $genreIds, id: $id, mediaType: $mediaType, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.posterPath == posterPath &&
        other.adult == adult &&
        other.overview == overview &&
        other.releaseDate == releaseDate &&
        other.originalTitle == originalTitle &&
        listEquals(other.genreIds, genreIds) &&
        other.id == id &&
        other.mediaType == mediaType &&
        other.originalLanguage == originalLanguage &&
        other.title == title &&
        other.backdropPath == backdropPath &&
        other.popularity == popularity &&
        other.voteCount == voteCount &&
        other.video == video &&
        other.voteAverage == voteAverage;
  }

  @override
  int get hashCode {
    return posterPath.hashCode ^
        adult.hashCode ^
        overview.hashCode ^
        releaseDate.hashCode ^
        originalTitle.hashCode ^
        genreIds.hashCode ^
        id.hashCode ^
        mediaType.hashCode ^
        originalLanguage.hashCode ^
        title.hashCode ^
        backdropPath.hashCode ^
        popularity.hashCode ^
        voteCount.hashCode ^
        video.hashCode ^
        voteAverage.hashCode;
  }

  Movie copyWith({
    String? posterPath,
    bool? adult,
    String? overview,
    String? releaseDate,
    String? originalTitle,
    List<int>? genreIds,
    int? id,
    String? mediaType,
    String? originalLanguage,
    String? title,
    String? backdropPath,
    double? popularity,
    int? voteCount,
    bool? video,
    dynamic voteAverage,
  }) {
    return Movie(
      posterPath: posterPath ?? this.posterPath,
      adult: adult ?? this.adult,
      overview: overview ?? this.overview,
      releaseDate: releaseDate ?? this.releaseDate,
      originalTitle: originalTitle ?? this.originalTitle,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      mediaType: mediaType ?? this.mediaType,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      title: title ?? this.title,
      backdropPath: backdropPath ?? this.backdropPath,
      popularity: popularity ?? this.popularity,
      voteCount: voteCount ?? this.voteCount,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }
}
