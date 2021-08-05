import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../entities/manga_entity.dart';

abstract class MangaRepository {
  Future<Either<Failure, MangaEntity>>? getMangaDetails(int id);
  Future<Either<Failure, List<MangaEntity>>>? getMangasByName(String? query);
  Future<Either<Failure, List<MangaEntity>>>? getScheduledMangas(List<int>? scheduledMangas);
}