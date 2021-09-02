import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../entities/manga_entity.dart';
import '../repositories/manga_repository.dart';
import 'base_service.dart';

class SaveMangaService implements IBaseService<MangaEntity, MangaEntity> {
  final MangaRepository repository;

  SaveMangaService(this.repository);

  Future<Either<Failure, MangaEntity>> call(MangaEntity manga) async {
    final result = await repository.saveManga(manga);
    if (result!.isRight()) {
      return result;
    }
    return Left(ServiceFailure());
  }
}
