import '../../domain/entities/manga_entity.dart';

class MangaModel extends MangaEntity {
  MangaModel({
    required int id,
    required int idMal,
    required String name,
    required String coverUrl,
    required String nativeName,
    int? chapters,
    int? popularity,
    String? description,
    String? coverColor,
    String? englishName,
    int? weekDay,
    int? weekOfMonth,
  }) : super(
          id: id,
          name: name,
          idMal: idMal,
          nativeName: name,
          coverUrl: coverUrl,
          chapters: chapters,
          coverColor: coverColor,
          popularity: popularity,
          description: description,
          englishName: englishName,
          weekDay: weekDay,
          weekOfMonth: weekOfMonth,
        );

  factory MangaModel.fromJson(Map<String, dynamic> json) => MangaModel(
        id: json['id'].toString() as int,
        coverUrl: json['coverUrl'].toString(),
        idMal: json['idMal'].toString() as int,
        coverColor: json['coverUrl'].toString(),
        name: json['title']['romaji'].toString(),
        description: json['description'].toString(),
        nativeName: json['title']['native'].toString(),
        englishName: json['title']['english'].toString(),
        popularity: json['popularity'].toString() as int,
        chapters: json['chapters'].toString() as int,
      );
}
