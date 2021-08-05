import '../../domain/entities/manga_scheduled_entity.dart';

class MangaModel extends MangaScheduledEntity {
  MangaModel({
    required int id,
    required String type,
    required DateTime day,
  }) : super(id: id, type: type, day: day);
}
