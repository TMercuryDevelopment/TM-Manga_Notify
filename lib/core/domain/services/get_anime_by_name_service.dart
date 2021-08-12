import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../../failures/internet/internet_failures.dart';
import '../entities/manga_entity.dart';
import '../repositories/manga_repository.dart';
import 'base_service.dart';

class GetAnimeByNameService implements BaseService<List<MangaEntity>, String> {
  final MangaRepository repository;

  GetAnimeByNameService(this.repository);

  @override
  Future<Either<Failure, List<MangaEntity>>> call(String attr) async {
    final result = await repository.getMangasByName(attr);
    return result.where((r) => r.isNotEmpty, () => BadRequestFailure());
  }
}
