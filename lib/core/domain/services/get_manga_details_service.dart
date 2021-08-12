import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../entities/manga_entity.dart';
import '../repositories/manga_repository.dart';
import 'base_service.dart';

class GetMangaDetailsService implements BaseService<MangaEntity, int> {
  final MangaRepository repository;

  GetMangaDetailsService(this.repository);

  @override
  Future<Either<Failure, MangaEntity>> call(int attr) async {
      return repository.getMangaDetails(attr);
  }
}
