import 'package:equatable/equatable.dart';

class MangaScheduledEntity extends Equatable {
  final int id;
  final String type;
  final DateTime day;

  const MangaScheduledEntity({
    required this.id,
    required this.day,
    required this.type,
  });

  @override
  List<Object?> get props => [id, type, day];
}
