import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../entities/manga_entity.dart';
import '../repositories/manga_repository.dart';
import 'base_service.dart';

class UpdateMangaService implements IBaseService<MangaEntity, MangaEntity> {
  final MangaRepository repository;
  UpdateMangaService(this.repository);

  Future<Either<Failure, MangaEntity>> call(MangaEntity manga) async {
    final result = await repository.updateManga(manga);
    if (result!.isRight()) {
      return result;
    }
    return Left(ServiceFailure());
  }
}
