import 'package:dartz/dartz.dart';

import '../../failures/failures.dart';

abstract class IBaseService<Output, Input> {
  Future<Either<Failure, Output>?> call(Input attr);
}
abstract class IVoidBaseService<Output> {
  Future<Either<Failure, Output>?> call();
}
