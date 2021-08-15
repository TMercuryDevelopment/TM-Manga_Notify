import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manga_notify/core/domain/entities/manga_entity.dart';
import 'package:manga_notify/core/domain/repositories/manga_repository.dart';
import 'package:manga_notify/core/domain/services/get_my_scheduled_mangas.dart';
import 'package:manga_notify/core/failures/service/services_failures.dart';
import 'package:mockito/mockito.dart';

import 'mocks/anime_list_mock.dart';

class MangaRepositoryMock extends Mock implements MangaRepository {}

void main() {
  final repository = MangaRepositoryMock();
  final service = GetMyScheduledMangas(repository);
  final mangaIds = [86652, 97154];
  test("Deve Retornar uma lista de Mangás previamente Agendados", () async {
    when(repository.getScheduledMangas(mangaIds))
        .thenAnswer((_) async => right(animeListMock));

    final result = await service(mangaIds);
    expect(result.fold(id, id), isA<List<MangaEntity>>());
  });
  test(
      "Deve Retornar uma lista de Mangás Vazios caso seja passado uma lista vazia",
      () async {
    when(repository.getScheduledMangas([])).thenAnswer((_) async => right([]));

    final result = await service([]);
    expect(result.all((r) => r.length == 0), true);
  });
  test(
      "Deve Retornar uma Failure(PermissionDenied), quando for passado uma lista de ids",
      () async {
    when(repository.getScheduledMangas(mangaIds))
        .thenAnswer((_) async => left(DevicePermissionDenied()));

    final result = await service(mangaIds);
    expect(result.all((r) => r is DevicePermissionDenied), isTrue);
  });
  test(
      "Deve Retornar uma ServiceFailure(Invalid List), caso a lista salva seja inválida",
      () async {
    when(repository.getScheduledMangas(mangaIds))
        .thenAnswer((_) async => left(InvalidList()));

    final result = await service(mangaIds);
    expect(result.all((r) => r is InvalidList), isTrue);
  });
}
