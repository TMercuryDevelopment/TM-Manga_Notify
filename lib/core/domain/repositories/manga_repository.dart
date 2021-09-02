import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../entities/manga_entity.dart';

abstract class MangaRepository {
  Future<Either<Failure, List<MangaEntity>>>? getMangasByName(String query);
  Future<Either<Failure, List<MangaEntity>>>? getScheduledMangas();
  Future<Either<Failure, MangaEntity>>? saveManga(
    MangaEntity manga,
  );
  Future<Either<Failure, MangaEntity>>? deleteManga(MangaEntity manga);
  Future<Either<Failure, MangaEntity>>? updateManga(MangaEntity manga);
}
