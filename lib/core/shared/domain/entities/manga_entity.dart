import 'package:equatable/equatable.dart';

class MangaEntity extends Equatable {
  final int id;
  final int idMal;
  final String name;
  final String coverUrl;
  final String nativeName;
  final int? chapters;
  final int? popularity;
  final String? description;
  final String? coverColor;
  final String? englishName;
  final int? weekDay;
  final int? weekOfMonth;

  const MangaEntity({
    required this.id,
    required this.name,
    required this.idMal,
    required this.coverUrl,
    required this.nativeName,
    this.popularity,
    this.description,
    this.chapters,
    this.coverColor,
    this.englishName,
    this.weekDay,
    this.weekOfMonth,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        idMal,
        chapters,
        coverUrl,
        coverColor,
        popularity,
        nativeName,
        description,
        englishName,
        weekDay,
        weekOfMonth,
      ];
}
