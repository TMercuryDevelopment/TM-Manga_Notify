import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../entities/manga_entity.dart';
import '../repositories/manga_repository.dart';
import 'base_service.dart';

class GetMyScheduledMangas implements IVoidBaseService<List<MangaEntity>> {
  final MangaRepository repository;

  GetMyScheduledMangas(this.repository);

  Future<Either<Failure, List<MangaEntity>>> call() async {
    final result = await repository.getScheduledMangas();
    if (result!.isRight()) {
      return result;
    }
    return Left(ServiceFailure());
  }
}
