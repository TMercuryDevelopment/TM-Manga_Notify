import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manga_notify/core/domain/entities/manga_entity.dart';
import 'package:manga_notify/core/domain/repositories/manga_repository.dart';
import 'package:manga_notify/core/domain/services/get_anime_by_name_service.dart';
import 'package:mockito/mockito.dart';

class MangaRepositoryMock extends Mock implements MangaRepository {}

void main() {
  final repository = MangaRepositoryMock();
  final service = GetAnimeByNameService(repository);

  test("Deve Retornar uma lista de Mangás de um repositório", () async {
    when(repository.getMangasByName("Bleach"))
        .thenAnswer(
            (_) async => right(<MangaEntity>[]));

    final result = await service("Bleach");
    expect(result.fold(id, id), isA<List<MangaEntity>>());
  });
}
