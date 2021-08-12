import '../failures.dart';

class BadRequestFailure extends InternetFailure {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class NotFoundFailure extends InternetFailure {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class TimeOutFailure extends InternetFailure {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class TooManyRequestFailure extends InternetFailure {
  @override
  List<Object?> get props => throw UnimplementedError();
}