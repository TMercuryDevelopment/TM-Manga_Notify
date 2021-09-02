import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manga_notify/core/shared/domain/entities/manga_entity.dart';
import 'package:manga_notify/core/shared/domain/repositories/manga_repository.dart';
import 'package:manga_notify/core/shared/domain/services/get_anime_by_name_service.dart';
import 'package:manga_notify/core/shared/failures/failures.dart';

import 'package:mockito/mockito.dart';

import 'mocks/anime_list_mock.dart';

class MangaRepositoryMock extends Mock implements MangaRepository {}

void main() {
  final repository = MangaRepositoryMock();
  final service = GetAnimeByNameService(repository);
  final manga = 'Bleach';

  test("Deve Retornar uma lista de Mangás de um repositório", () async {
    when(repository.getMangasByName(manga))
        .thenAnswer((_) async => right(animeListMock));

    final result = await service(manga);
    expect(result.fold(id, id), isA<List<MangaEntity>>());
  });

  test("Deve Retornar uma Falha de Internet caso a requisição falhe", () async {
    when(repository.getMangasByName(manga))
        .thenAnswer((_) async => left(InternetFailure()));

    final result = await service(manga);
    expect(result.fold(id, id), isA<InternetFailure>());
  });
}
