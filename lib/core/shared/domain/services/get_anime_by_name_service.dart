import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../entities/manga_entity.dart';
import '../repositories/manga_repository.dart';
import 'base_service.dart';

class GetAnimeByNameService implements IBaseService<List<MangaEntity>, String> {
  final MangaRepository repository;
  GetAnimeByNameService(this.repository);

  @override
  Future<Either<Failure, List<MangaEntity>>> call(String attr) async {
    final result = await repository.getMangasByName(attr);
    if (result!.isRight()) {
      return result;
    }
    return Left(InternetFailure());
  }
}
