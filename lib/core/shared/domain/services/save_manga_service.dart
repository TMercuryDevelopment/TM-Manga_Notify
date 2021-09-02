import 'package:dartz/dartz.dart';
import 'package:manga_notify/core/shared/domain/entities/manga_entity.dart';
import 'package:manga_notify/core/shared/domain/repositories/manga_repository.dart';
import 'package:manga_notify/core/shared/failures/failures.dart';

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
