import '../failures.dart';

class BadRequestFailure extends InternetFailure {}

class NotFoundFailure extends InternetFailure {}

class TimeOutFailure extends InternetFailure {}

class TooManyRequestFailure extends InternetFailure {}
