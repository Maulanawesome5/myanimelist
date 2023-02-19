class Anime {
  int id;
  String anime_title;
  Anime({
    required this.id,
    required this.anime_title,
  });

  Anime copyWith({
    int? id,
    String? anime_title,
  }) {
    return Anime(
      id: id ?? this.id,
      anime_title: anime_title ?? this.anime_title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "anime_title": anime_title,
    };
  }
}
