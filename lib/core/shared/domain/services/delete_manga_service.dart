import 'package:dartz/dartz.dart';
import '../entities/manga_entity.dart';
import '../repositories/manga_repository.dart';
import '../../failures/failures.dart';

import 'base_service.dart';

class DeleteMangaService implements IBaseService<MangaEntity, MangaEntity> {
  final MangaRepository repository;

  DeleteMangaService(this.repository);

  Future<Either<Failure, MangaEntity>> call(MangaEntity manga) async {
    final result = await repository.updateManga(manga);
    if (result!.isRight()) {
      return result;
    }
    return Left(ServiceFailure());
  }
}
