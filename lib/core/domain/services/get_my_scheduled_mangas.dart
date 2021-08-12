import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';
import '../../failures/service/services_failures.dart';
import '../entities/manga_entity.dart';
import '../repositories/manga_repository.dart';
import 'base_service.dart';

class GetMyScheduledMangas implements BaseService<List<MangaEntity>, List<int>> {
  final MangaRepository repository;

  GetMyScheduledMangas(this.repository);

  @override
  Future<Either<Failure, List<MangaEntity>>> call(List<int> attr) async {
      if (attr.length == 0) {
      final result = await repository.getScheduledMangas(attr);
      return result.where((r) => r.isNotEmpty, () => UnsavedListFailure());
    }
    return Left(NullParamFailure());
  }


}
