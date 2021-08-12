import '../failures.dart';

class NullParamFailure extends ServiceFailure {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class UnsavedListFailure extends ServiceFailure {
  @override
  List<Object?> get props => throw UnimplementedError();
}
